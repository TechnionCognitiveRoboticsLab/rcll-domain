#!/bin/bash

# Copyright (C) 2016-2018 Tim Niemueller

awk '{ if ($2 =="ROSPlan") print $1,$3,$2,$5,$4,$7,$6; else print $1,$2,$3,$4,$5,$6,$7; }' Exp-SMT-ROSPlan-4_o1_deliv_time.txt  > Exp-SMT-ROSPlan-4_o1_deliv_time_colorder.txt

