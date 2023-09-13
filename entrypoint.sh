#!/bin/sh

COMMAND="/maintenance.sh"

# create cron entry
echo "$CRON /bin/sh $COMMAND" >> /var/spool/cron/crontabs/root

# run cron daemon
/usr/sbin/crond -f -l 8
