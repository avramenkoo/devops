#!/bin/bash

URL="http://nginx"
LOG_FILE="response_log.txt"

RESPONSE_CODE=$(curl -s -o /dev/null -w "%{http_code}" $URL)

echo "$(date) - Response code: $RESPONSE_CODE"

if [[ $RESPONSE_CODE != 2* && $RESPONSE_CODE != 3* ]]; then
  echo "$(date) - Response code: $RESPONSE_CODE" >> $LOG_FILE
fi
