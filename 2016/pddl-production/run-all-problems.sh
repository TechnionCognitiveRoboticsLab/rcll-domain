#!/bin/bash

# Copyright (C) 2016-2018 Tim Niemueller

export TIMEOUT=${TIMEOUT:-5}
echo "Timeout: $TIMEOUT sec"

echo "***** RUNNING with NON-DURATIVE actions *****"
./run-problems.sh --domain=rcll_domain_production.pddl --csv results.csv problem-*-r*-o1.pddl

echo
echo
echo "***** RUNNING with DURATIVE actions *****"
./run-problems.sh --domain=rcll_domain_production_durations.pddl --csv results.csv problem-*-r*-o1-durations.pddl
