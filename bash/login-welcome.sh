#!/bin/bash
#
# This script produces the dynamic welcome message
# it should look like
#   Welcome to planet hostname, title name!

# Improve this script by using the value in the automatic variable $USER for the name
# Improve this script by adding some time and day of the week information to the welcome message
#   Use a format like this:
#   It is HH:MM AM on weekday.

###############
# Variables   #
###############
title="$USER"
time=$(date +'%A, %H:%M %p')
hostname="$hostname"

variable1="Welcome to planet $hostname, $title!"
variable2="It is $time"

echo -e "$variable1\n\n$variable2" | cowsay
