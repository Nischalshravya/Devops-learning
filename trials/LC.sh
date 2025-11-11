#!/bin/bash
#
# count of s in mississipi
# ************************
#
x=mississipi

grep -o "s" <<< "$x" |wc -l
