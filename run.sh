#!/bin/sh
set -e

# Apache gets grumpy about PID files pre-existing
rm -f /usr/local/apache2/logs/httpd.pid

httpd -DFOREGROUND

if [ -z "$JPDA_ADDRESS" ]; then
  exec catalina.sh run
else
  exec catalina.sh jpda
fi
