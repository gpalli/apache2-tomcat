#!/bin/sh
set -e

# Apache gets grumpy about PID files pre-existing
rm -f /usr/local/apache2/logs/httpd.pid
rm -f log.out

nohup httpd -DFOREGROUND >log.out 2>&1 &

nohup catalina.sh run >>log.out 2>&1 &

tail -f log.out

