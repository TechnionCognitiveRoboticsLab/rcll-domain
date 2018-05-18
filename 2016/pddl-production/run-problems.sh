#!/bin/bash

# Copyright (C) 2016-2018 Tim Niemueller

POPF=${POPF:-~/robotics/ros/catkin_ws_kinetic/src/rosplan/rosplan_planning_system/common/bin/popf}
TIMEOUT=${TIMEOUT:-90}
TIMECMD="/usr/bin/time -f \"CALCTIME %E;%S;%U;%M;%K\""
ANY_TIME=
SAVE_OUTPUT=

OPTS=$(getopt -o "d:" -l "domain:,csv:,any-time,timeout:,save-output" -- "$@")
if [ $? != 0 ]
then
	echo "Failed to parse parameters"
	exit 1
fi

CSV=

eval set -- "$OPTS"
while true; do
  OPTION=$1
  OPTARG=$2
  case $OPTION in
    -d|--domain) DOMAIN=$OPTARG;;
		--any-time)  ANY_TIME="-n";;
		--csv)       CSV=$OPTARG;;
		--timeout)   TIMEOUT=$OPTARG;;
		--save-output) SAVE_OUTPUT=1;;
    --)          shift; break;;
  esac
  shift
done

if [ -z "$DOMAIN" ]; then
	echo "No domain given"
	exit 2
fi

PROBLEMS="$@"

for P in $PROBLEMS; do
	echo "Running $P (timeout $TIMEOUT, any-time: $ANY_TIME)"
	OUT=$(/usr/bin/time -f '\nCALCTIME %E;%S;%U;%M;%K' timeout $TIMEOUT $POPF $ANY_TIME $DOMAIN $P 2>&1)
	RES=$?
	if [ -n "$ANY_TIME" ]; then
		COST=$(grep -e '^; Plan found with metric' <<< "$OUT" | tail -n1 | awk '{ print $6 }')
	else
		COST=$(grep -e '^; Cost' <<< "$OUT" | awk '{ print $3 }')
	fi
	TIME=$(grep -e '^; Time' <<< "$OUT" | tail -n1 | awk '{ print $3 }')
	#echo "Planner Output:"
	#echo "$OUT"
	#echo RES $RES
	if [ -n "$SAVE_OUTPUT" ]; then
		OUT_FILE="${P%.pddl}.out${ANY_TIME}.txt"
		echo "$OUT" > $OUT_FILE
	fi
	CALCTIME=$(grep -e '^CALCTIME' <<< "$OUT" | awk '{ print $2 }')
	if [ -n "$TIME" ]; then
		if [ -z "$COST" ]; then
			echo "Invalid run"
			if [ -n "$CSV" ]; then
				echo "$DOMAIN;$P;inf;$TIME;$CALCTIME;INVALID" >> $CSV
			fi
		else
			STATUS="OK"
			# Even if we found a plan, we may still have run out of memory
			if [ "$RES" == "134" ] || [ "$RES" == "6" ]; then
				STATUS="OUTOFMEMORY"
			fi
			echo "Time: $TIME"
			echo "Cost: $COST"
			echo "Status: $STATUS"
			if [ -n "$CSV" ]; then
				echo "$DOMAIN;$P;$COST;$TIME;$CALCTIME;$STATUS" >> $CSV
			fi
		fi
	elif [ "$RES" == "134" ] || [ "$RES" == "6" ]; then
		echo "Out of memory"
		if [ -n "$CSV" ]; then
			echo "$DOMAIN;$P;inf;inf;$CALCTIME;OUTOFMEMORY" >> $CSV
		fi
	else
		echo "Timeout, no plan found"
		if [ -n "$CSV" ]; then
			echo "$DOMAIN;$P;inf;inf;$CALCTIME;TIMEOUT" >> $CSV
		fi
	fi
done

exit 0
