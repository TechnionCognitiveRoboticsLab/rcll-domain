#!/usr/bin/env python3

# Copyright (C) 2016-2018 Tim Niemueller

import argparse
import csv
import statistics
from datetime import datetime, timedelta

class ProcCSV:
	def __init__(self, input_file, delimiter=";", output_file=None):
		self.csvfile = open(input_file, "r")
		self.csv = csv.reader(self.csvfile, delimiter=delimiter)
		self.rows = [row for row in self.csv]
		self.finrows = [row for row in self.rows if row[3] != "inf"]
		self.delimiter   = delimiter
		self.input_file  = input_file
		self.output_file = output_file

	def run(self):
		calctimes = [float(row[3]) for row in self.finrows]
		costs = [float(row[2]) for row in self.finrows]
		runtimes = []
		status = {}
		for row in self.finrows:
			t = datetime.strptime(row[4],"%M:%S.%f")
			delta = timedelta(hours=t.hour, minutes=t.minute,
			                  seconds=t.second, microseconds=t.microsecond)
			#print("Calc-time %f" % float(row[3]))
			#print("Run-time  %f" % delta.total_seconds())
			runtimes.append(delta.total_seconds())
		print("Solved: %d/%d" % (len(self.finrows), len(self.rows)))

		for row in self.rows:
			row_status = "TIMEOUT"
			if len(row) >= 10:
				row_status = row[9]

			if row_status in status:
				status[row_status] += 1
			else:
				status[row_status]  = 1
		print("Statuses: %s" % str(status))
		
		if len(self.finrows) > 0:
			calctimes_median = statistics.median(calctimes)
			calctimes_avg = statistics.mean(calctimes)
			calctimes_stdev = statistics.stdev(calctimes)
			calctimes_variance = statistics.variance(calctimes)
			print("")
			print("Calc time Median:   %7.2f s" % calctimes_median)
			print("Calc time Avg:      %7.2f s" % calctimes_avg)
			print("Calc time StDev:    %7.2f" % calctimes_stdev)
			print("Calc time Variance: %7.2f" % calctimes_variance)

			runtimes_median = statistics.median(runtimes)
			runtimes_avg = statistics.mean(runtimes)
			runtimes_stdev = statistics.stdev(runtimes)
			runtimes_variance = statistics.variance(runtimes)
			print("")
			print("Run-time Median:    %7.2f s" % runtimes_median)
			print("Run-time Avg:       %7.2f s" % runtimes_avg)
			print("Run-time StDev:     %7.2f" % runtimes_stdev)
			print("Run-time Variance:  %7.2f" % runtimes_variance)

			costs_median = statistics.median(costs)
			costs_avg = statistics.mean(costs)
			costs_stdev = statistics.stdev(costs)
			costs_variance = statistics.variance(costs)
			print("")
			print("Cost Median:        %7.2f s" % costs_median)
			print("Cost Avg:           %7.2f s" % costs_avg)
			print("Cost StDev:         %7.2f" % costs_stdev)
			print("Cost Variance:      %7.2f" % costs_variance)

			if self.output_file is not None:
				with open(self.output_file, "a") as outcsvfile:
					writer = csv.writer(outcsvfile, delimiter=';', lineterminator='\n')
					writer.writerow((self.input_file,
					                 "%.3f" % calctimes_median, "%.3f" % calctimes_avg,
					                 "%.3f" % calctimes_stdev, "%.3f" % calctimes_variance,
					                 "%.3f" % runtimes_median, "%.3f" % runtimes_avg,
					                 "%.3f" % runtimes_stdev, "%.3f" % runtimes_variance,
					                 "%.3f" % costs_median, "%.3f" % costs_avg,
					                 "%.3f" % costs_stdev, "%.3f" % costs_variance,
					                 status['OK'] if 'OK' in status else 0,
					                 status['TIMEOUT'] if 'TIMEOUT' in status else 0,
					                 status['OUTOFMEMORY'] if 'OUTOFMEMORY' in status else 0))
			
		else:
			print("No problems solved, no further analysis possible")

		

if __name__ == "__main__":
	parser = argparse.ArgumentParser(description='Process CSV results files')
	parser.add_argument('files', metavar='FILE', nargs='+',
	                    help='CSV input file')
	parser.add_argument('--outcsv', metavar='FILE',
	                    help='CSV output file')
	parser.add_argument('--delimiter', metavar='D', default=";",
	                    help='Delimiter in CSV files')
	args = parser.parse_args()

	for f in args.files:
		proc = ProcCSV(f, delimiter=args.delimiter, output_file=args.outcsv)
		proc.run()
