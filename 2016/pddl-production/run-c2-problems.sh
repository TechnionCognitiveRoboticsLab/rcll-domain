#!/bin/bash

# Copyright (C) 2016-2018 Tim Niemueller

# C1, 1800 sec timeout, PDDL, any-time, durative
for R in 1 3; do
	echo "***** RUNNING with DURATIVE actions for $R robots (any-time mode, 1800sec timeout) *****"
	PROBLEMS=
	for i in $(seq -f "%03g" 1 100); do
		PROBLEMS="$PROBLEMS problem-$i-r$R-o6-durations.pddl"
	done
	./run-problems.sh \
		--domain=rcll_domain_production_durations.pddl \
		--csv results-durative-r$R-o6-anytime.csv \
		--save-output \
		--any-time --timeout 1800 \
		$PROBLEMS
done

