#!/bin/sh
set -e

# Apache gets grumpy about PID files pre-existing
rm -f /usr/local/apache2/logs/httpd.pid
rm -f log.out

nohup httpd -DFOREGROUND >log.out 2>&1 &

if [ -z "$JPDA_ADDRESS" ]; then
  nohup catalina.sh run >>log.out 2>&1 &
else
  nohup catalina.sh jpda run >>log.out 2>&1 &
fi

tail -f log.out

