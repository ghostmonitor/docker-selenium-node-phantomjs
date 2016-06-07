#!/bin/bash

if [ -z "$SELENIUM_HUB" ]; then
  echo "Missing \$SELENIUM_HUB"
  exit 1
fi

/usr/bin/phantomjs --webdriver `hostname -I | awk '{print $1}'`:8080 ${PHANTOMJS_OPTS} --webdriver-selenium-grid-hub http://${SELENIUM_HUB}:4444
