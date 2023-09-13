#!/bin/sh

COMMAND="/maintenance.sh"

# create cron entry
echo $CRON $COMMAND

# run cron daemon
/usr/sbin/crond -f -l 8
