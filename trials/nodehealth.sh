#!/bin/bash

#######################################
#   Author : SHIVA
#   Date   : 06-Nov-2025
#
#
#   This script outputs nodehealth
#
#   Version :  v1
#
#######################################

set -x  # debug mode

df -h

free

nproc

ps -ef |grep amazon | awk -F" " '{print $2}'   ## Gives id of teh processes which has word amazon 
