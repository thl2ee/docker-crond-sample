#!/bin/sh
timestamp=`date +%Y/%m/%d-%H:%M:%S`
echo "System path is $PATH at $timestamp" >> /var/log/audit.log