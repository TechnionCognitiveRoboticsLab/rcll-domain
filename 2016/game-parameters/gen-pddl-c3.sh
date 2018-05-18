#!/bin/bash

# Copyright (C) 2016-2018 Tim Niemueller

for i in $(seq -f "%03g" 1 100); do
	## Only single standing order as goal and input
	# By number of robots
	./to_pddl.py --template=problem.j2 -g game-$i.txt -n ../navgraph-data/navgraph-costs-$i.csv --problem-name-suffix=$i --include-order=7 --num-robots=1 --durations > ../pddl-production/problem-$i-r1-o7-durations.pddl
	./to_pddl.py --template=problem.j2 -g game-$i.txt -n ../navgraph-data/navgraph-costs-$i.csv --problem-name-suffix=$i --include-order=7 --num-robots=3 --durations > ../pddl-production/problem-$i-r3-o7-durations.pddl

done
