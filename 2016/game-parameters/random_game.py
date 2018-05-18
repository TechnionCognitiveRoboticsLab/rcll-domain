#!/usr/bin/env python3

# Copyright (C) 2018 Tim Niemueller

import argparse
import re
import jinja2
import os
import random

PRODUCTION_TIME = 900

def time_sec_format(time_sec):
	hour = time_sec // 3600
	min  = (time_sec - hour * 3600) // 60
	sec  = time_sec - hour * 3600 - min * 60
	if hour > 0:
		return "%02d:%02d:%02d" % (hour, min, sec)
	else:
		return "%02d:%02d" % (min, sec)

if __name__ == '__main__':

	parser = argparse.ArgumentParser(description='Translate to PDDL')
	parser.add_argument('--template', required=True,
	                    help='Document template to fill')
	args = parser.parse_args()

	template = args.template
	if not os.path.exists(template):
		raise Exception("Template file does not exist")
	template_dir = os.path.dirname(template)
	template_file = os.path.basename(template)
	if template_file == "":
		raise Exception("Template must be a file, not a directory")

	jinja = jinja2.Environment(loader=jinja2.FileSystemLoader(template_dir),
	                           autoescape=False)
	jinja.filters['timestr']  = time_sec_format

	template = jinja.get_template(template_file)
	if template is None:
		print("Failed to get template '%s' (in '%s')" % (template_file, template_dir))
		raise FileNotFoundError("Could not find template '%s' ( in '%s')" \
		                        % (template_file, template_dir))

	# Based on 2016's facts.clp
	orders = [
		{
			'id':  1,
			'complexity': 0,
			'quantity_requested': 1,
			'start_range': (0, 0),
			'activation_range': (900, 900),
			'duration_range': (900, 900),
			'allow_overtime': False,
		},
		# (order (id  2) (complexity C0) (quantity-requested 1) (start-range 200 400))
		{
			'id':  2,
			'complexity': 0,
			'quantity_requested': 1,
			'start_range': (200, 400),
			'activation_range': (120, 240),
			'duration_range': (60, 180),
			'allow_overtime': False,
		},
		# (order (id  3) (complexity C0) (quantity-requested 2) (start-range 300 700))
		{
			'id':  3,
			'complexity': 0,
			'quantity_requested': 2,
			'start_range': (300, 700),
			'activation_range': (120, 240),
			'duration_range': (60, 180),
			'allow_overtime': False,
		},
		# (order (id  4) (complexity C0) (quantity-requested 1) (start-range 700 900))
		{
			'id':  4,
			'complexity': 0,
			'quantity_requested': 1,
			'start_range': (700, 900),
			'activation_range': (120, 240),
			'duration_range': (60, 180),
			'allow_overtime': False,
		},
		# (order (id  5) (complexity C1) (quantity-requested 1) (start-range 500 700)
		#        (activation-range 300 500) (duration-range 90 150))
		{
			'id':  5,
			'complexity': 1,
			'quantity_requested': 1,
			'start_range': (500, 700),
			'activation_range': (300, 500),
			'duration_range': (90, 150),
			'allow_overtime': False,
		},
		# (order (id  6) (complexity C2) (quantity-requested 1) (start-range 600 720)
		#        (activation-range 480 780) (duration-range 120 180))
		{
			'id':  6,
			'complexity': 2,
			'quantity_requested': 1,
			'start_range': (600, 720),
			'activation_range': (480, 780),
			'duration_range': (120, 180),
			'allow_overtime': False,
		},
		# (order (id  7) (complexity C3) (quantity-requested 1) (start-range 600 720)
	    #        (activation-range 900 900) (duration-range 120 180))
		{
			'id':  7,
			'complexity': 3,
			'quantity_requested': 1,
			'start_range': (600, 720),
			'activation_range': (900, 900),
			'duration_range': (120, 180),
			'allow_overtime': False,
		},
		# (order (id  8) (complexity C0) (quantity-requested 1) (start-range 900 900)
        #        (activation-range 0 0) (duration-range 300 300) (allow-overtime TRUE))
		{
			'id':  8,
			'complexity': 0,
			'quantity_requested': 1,
			'start_range': (900, 900),
			'activation_range': (0, 0),
			'duration_range': (300, 300),
			'allow_overtime': True,
		},
	]

	ring_specs = [
		{ 'color': "RING_BLUE" },
		{ 'color': "RING_GREEN" },
		{ 'color': "RING_ORANGE" },
		{ 'color': "RING_YELLOW" }
	]
	ring_colors = [rs['color'] for rs in ring_specs]
	base_colors = ["BASE_BLACK", "BASE_RED", "BASE_SILVER"]
	cap_colors  = ["CAP_BLACK", "CAP_GREY"]

	ring_stations = [
		{ 'name': 'C-RS1' },
		{ 'name': 'C-RS2' },
		{ 'name': 'M-RS1' },
		{ 'name': 'M-RS2' }
	]

	# Randomize order of ring_specs so we can assign req-bases easily
	random.shuffle(ring_specs)
	ring_specs[0]['req_bases'] = 2;
	ring_specs[1]['req_bases'] = 1;
	ring_specs[2]['req_bases'] = 0;
	ring_specs[3]['req_bases'] = 0;

	# Randomize game schedule
	for i, order in enumerate(orders):
		deliver_start = 0
		if order['start_range'][0] == order['start_range'][1]:
			deliver_start = order['start_range'][0]
		else:
			deliver_start = random.randrange(order['start_range'][0], order['start_range'][1])
		duration = 0
		if order['duration_range'][0] == order['duration_range'][1]:
			duration = order['duration_range'][0]
		else:
			duration = random.randrange(order['duration_range'][0], order['duration_range'][1])
		deliver_end = deliver_start + duration

		if deliver_end > PRODUCTION_TIME and not order['allow_overtime']:
			deliver_start = deliver_start - (deliver_end - PRODUCTION_TIME)
			deliver_end = PRODUCTION_TIME
			duration = deliver_end - deliver_start
		activation_pre_time = 0
		if order['activation_range'][0] == order['activation_range'][1]:
			activation_pre_time = order['activation_range'][0]
		else:
			activation_pre_time = \
				random.randrange(order['activation_range'][0], order['activation_range'][1])

		activate_at = max(deliver_start - activation_pre_time, 0)
		gate = random.randrange(1, 3)
		
		random.shuffle(ring_colors)
		ring_colors_o = ring_colors[:order['complexity']]
		base_color    = random.choice(base_colors)
		cap_color     = random.choice(cap_colors)

		order['delivery_period'] = (deliver_start, deliver_end)
		order['gate']            = gate
		order['activate_at']     = activate_at
		order['ring_colors']     = ring_colors_o
		order['base_color']      = base_color
		order['cap_color']       = cap_color
		order['duration']        = duration

	random.shuffle(ring_colors)
	ring_stations[0]['ring_colors'] = ring_colors[0:2]
	ring_stations[1]['ring_colors'] = ring_colors[2:4]
	ring_stations[2]['ring_colors'] = ring_colors[0:2]
	ring_stations[3]['ring_colors'] = ring_colors[2:4]
		
	template_args = {
		'orders': orders,
		'ring_specs': ring_specs,
		'ring_stations': ring_stations
	}

	res = template.render(template_args)
	print(res)
