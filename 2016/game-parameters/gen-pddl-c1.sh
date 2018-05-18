#!/bin/bash

# Copyright (C) 2016-2018 Tim Niemueller

for i in $(seq -f "%03g" 1 100); do
	### Non-durative, i.e., just causal reasoning
	## Disable RS for now as we only care about standing order
	## Only single standing order as goal and input
	# By number of robots
	#./to_pddl.py --template=problem.j2 -g game-$i.txt -n ../navgraph-data/navgraph-costs-$i.csv --problem-name-suffix=$i --include-order=1 --num-robots=1 --no-rs > ../pddl-production/problem-$i-r1-o1.pddl
	#./to_pddl.py --template=problem.j2 -g game-$i.txt -n ../navgraph-data/navgraph-costs-$i.csv --problem-name-suffix=$i --include-order=1 --num-robots=2 --no-rs > ../pddl-production/problem-$i-r2-o1.pddl
	#./to_pddl.py --template=problem.j2 -g game-$i.txt -n ../navgraph-data/navgraph-costs-$i.csv --problem-name-suffix=$i --include-order=1 --num-robots=3 --no-rs > ../pddl-production/problem-$i-r3-o1.pddl

	### Durative actions
	## Disable RS for now as we only care about standing order
	## Only single standing order as goal and input
	# By number of robots
	./to_pddl.py --template=problem.j2 -g game-$i.txt -n ../navgraph-data/navgraph-costs-$i.csv --problem-name-suffix=$i --include-order=5 --num-robots=1 --durations > ../pddl-production/problem-$i-r1-o5-durations.pddl
	./to_pddl.py --template=problem.j2 -g game-$i.txt -n ../navgraph-data/navgraph-costs-$i.csv --problem-name-suffix=$i --include-order=5 --num-robots=3 --durations > ../pddl-production/problem-$i-r3-o5-durations.pddl

done
