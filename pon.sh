#!/bin/bash

COMMUNITY=$1
IP=$2
PON=$3
STATUS=$4

snmpwalk -v2c -c $COMMUNITY $IP .1.3.6.1.4.1.2011.6.128.1.1.2.46.1.15."$PON" | awk '{print $4}' | grep "$STATUS" | wc -l