#!/bin/bash

IPADDR=`ifconfig | sed -En 's/127.0.0.1//;s/.*inet (addr:)?(([0-9]*\.){3}[0-9]*).*/\2/p'`;

>/tmp/mailtest
echo "From: pi@raspberry.com" >> /tmp/mailtest
echo "To: ajaygandhi34@gmail.com" >> /tmp/mailtest
echo "Subject: Find Me - Raspberry Pi" >> /tmp/mailtest
echo "" >> /tmp/mailtest
echo -e "IP address: $IPADDR\n'ifconfig' output:" >> /tmp/mailtest
ifconfig >> /tmp/mailtest
cat /tmp/mailtest | sendmail -t

