#!/bin/bash

# C0, 60 sec timeout, PDDL, one-shot, non-durative
for R in 1 2 3; do
	echo "***** RUNNING with NON-DURATIVE actions for $R robots (one-shot mode, 60s timeout) *****"
	./run-problems.sh \
		--domain=rcll_domain_production.pddl \
		--csv results-nondurative-r$R-o1-oneshot.csv \
		--save-output \
		--timeout 60 \
		problem-*-r$R-o1.pddl
done

echo
echo
# C0, 60 sec timeout, PDDL, one-shot, durative
for R in 1 2 3; do
	echo "***** RUNNING with DURATIVE actions for $R robots (one-shot mode, 60sec timeout) *****"
	./run-problems.sh \
		--domain=rcll_domain_production_durations_nors.pddl \
		--csv results-durativenors-r$R-o1-oneshot.csv \
		--save-output \
		--timeout 60 \
		problem-*-r$R-o1-durations.pddl
done

echo
echo
# C0, 60 sec timeout, PDDL, any-time, non-durative
for R in 1 2 3; do
	echo "***** RUNNING with NON-DURATIVE actions for $R robots (any-time mode, 60sec timeout) *****"
	./run-problems.sh \
		--domain=rcll_domain_production.pddl \
		--csv results-nondurative-r$R-o1-anytime.csv \
		--save-output \
		--any-time --timeout 60 \
		problem-*-r$R-o1.pddl
done

echo
echo
# C0, 60 sec timeout, PDDL, any-time, durative
for R in 1 2 3; do
	echo "***** RUNNING with DURATIVE actions for $R robots (any-time mode, 60sec timeout) *****"
	./run-problems.sh \
		--domain=rcll_domain_production_durations_nors.pddl \
		--csv results-durativenors-r$R-o1-anytime.csv \
		--save-output \
		--any-time --timeout 60 \
		problem-*-r$R-o1-durations.pddl
done

