#!/bin/bash

COMMUNITY=$1
IP=$2

snmpwalk -v2c -c $COMMUNITY $IP .1.3.6.1.4.1.2011.6.128.1.1.2.48.2 | wc -l