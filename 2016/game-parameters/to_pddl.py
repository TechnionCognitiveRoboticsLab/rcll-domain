#!/usr/bin/env python3

import argparse
import re
import jinja2
import os
from datetime import datetime, timedelta


if __name__ == '__main__':

	parser = argparse.ArgumentParser(description='Translate to PDDL')
	parser.add_argument('-g', metavar='FILE', required=True,
	                    help='Game parameters input file')
	parser.add_argument('-n', metavar='FILE', required=True,
	                    help='Navgraph input file')
	parser.add_argument('--template', required=True,
	                    help='Problem template to fill')
	parser.add_argument('--durations', action='store_true',
	                    help='Include durations')
	parser.add_argument('--num-robots', type=int, choices=(1, 2, 3), default=1,
	                    help='Number of robots to place in program')
	parser.add_argument('--include-order', dest='orders', action='append',
	                    help='Include the named order, may be used multiple times. If used, will only include given orders and exclude all others. Give order ID number, e.g., 1.')
	parser.add_argument('--problem-name-suffix', required=True,
	                    help='Problem name suffix')
	parser.add_argument('--team-color', default='CYAN', choices=set(("CYAN", "MAGENTA")),
	                    help='Team color')
	parser.add_argument('--no-rs', action='store_true',
	                    help='Disable RS-related elements.')
	args = parser.parse_args()

	problem_suffix = args.problem_name_suffix
	domain_suffix = ""
	if args.durations:
		problem_suffix += "-durative"
		domain_suffix = "-durative"

	team_short = "C"
	if args.team_color == "MAGENTA":
		team_short = "M"
		
	template_args={"robots": ["R-%d" % (i+1) for i in range(0, args.num_robots)],
	               "problem_suffix": problem_suffix,
	               "domain_suffix": domain_suffix,
	               "team_color": args.team_color,
	               "T": team_short,
	               'orders': [],
	               'ring_machines': []}

	num_to_symbol = { '0': 'ZERO',
	                  '1': 'ONE',
	                  '2': 'TWO' }

	if args.no_rs:
		template_args['no_rs'] = True

	template = args.template
	if not os.path.exists(template):
		raise Exception("Template file does not exist")
	template_dir = os.path.dirname(template)
	template_file = os.path.basename(template)
	if template_file == "":
		raise Exception("Template must be a file, not a directory")

	jinja = jinja2.Environment(loader=jinja2.FileSystemLoader(template_dir),
	                           autoescape=False)
	
	with open(args.g) as f:
		lines = f.read().splitlines()

	re_order = re.compile('^Order (?P<order>[0-9]): C(?P<complexity>[0-3]) \((?P<base>[^\|]+)\|(?P<rings>[^\|]*)\|(?P<cap>[^\)]+)\) from (?P<delivery_open_m>[0-9]+):(?P<delivery_open_s>[0-9][0-9]) to (?P<delivery_close_m>[0-9]+):(?P<delivery_close_s>[0-9][0-9]).* D(?P<gate>[1-3])$')

	re_ringmat = re.compile('^Ring color (?P<ring_color>[^ ]+) requires (?P<num_material>[0-2]).*$')

	re_rsspec = re.compile('^RS (?P<machine>%s-RS[12]) has colors \((?P<rings>[^\)]+)\)' % team_short)

	# Parse

	ring_material={}
	ring_machines={}
	
	#print("Content: %s" % str(content))
	for l in lines:
		m_order = re_order.match(l)
		if m_order is not None:
			m = m_order.groupdict()
			#print("Order %s %s %s %s %s %s" % m_order.groups())
			order = { 'id': "o%s" % m['order'],
			          'complexity': m['complexity'],
			          'base_color': m['base'],
			          'ring_colors': [],
			          'cap_color': m['cap'],
			          'gate': m['gate'],
					  'delivery_open': int(m['delivery_open_m'])*60+int(m['delivery_open_s']),
					  'delivery_close': int(m['delivery_close_m'])*60+int(m['delivery_close_s'])
					   }
			if m['rings'] != "":
				order['ring_colors'] = m['rings'].split()
			if args.orders is None or m['order'] in args.orders:
				template_args['orders'].append(order)

		m_ringmat = re_ringmat.match(l)
		if m_ringmat is not None:
			m = m_ringmat.groupdict()
			ring_material[m['ring_color']] = num_to_symbol[m['num_material']]

		m_rsspec = re_rsspec.match(l)
		if m_rsspec is not None:
			m = m_rsspec.groupdict()
			rings = m['rings'].split()
			for r in rings:
				ring_machines[r] = m['machine']
			
	for c, m in ring_machines.items():
		template_args['ring_machines'].append({ "machine": m, "color": c, "num": ring_material[c]})

	#print("Problem:\n%s" % str(problem))
		
	with open(args.n) as f:
		navgraph_lines = f.read().splitlines()

	re_navgraph_data = re.compile('^((?P<from_machine>[CM]-[BCDR]S[12]?)-(?P<from_side>[IO])|C-ins-in);(?P<to_machine>[CM]-[BCDR]S[12]?)-(?P<to_side>[IO]);(?P<cost>[0-9.]+)')

	mside_short_to_long = { 'I': 'INPUT', 'O': 'OUTPUT'}
	path_costs = []

	for l in navgraph_lines:
		m_ngdata = re_navgraph_data.match(l)
		if m_ngdata is not None:
			m = m_ngdata.groupdict()
			from_machine = m['from_machine']
			if from_machine is None: from_machine = "START"
			if m['from_side'] is not None:
				from_side = mside_short_to_long[m['from_side']]
			else:
				from_side = "INPUT"

			pc = { "from_node": from_machine,
			       "from_side": from_side,
			       "to_node": m['to_machine'],
			       "to_side": mside_short_to_long[m['to_side']],
				   "cost": m['cost'] }
			if (pc['from_node'] == "START" and pc['to_node'][0] == team_short) or \
			   (pc['from_node'][0] == team_short and pc['to_node'][0] == team_short):
				path_costs.append(pc)
		else:
			print("Did not understand path cost line '%s'" % l)

	if args.durations:
		template_args['path_costs'] = path_costs

	
	template = jinja.get_template(template_file)
	if template is None:
		print("Failed to get template '%s' (in '%s')" % (template_file, template_dir))
		raise FileNotFoundError("Could not find template '%s' ( in '%s')" \
		                        % (template_file, template_dir))

	res = template.render(template_args)
	print(res)
