#!/bin/bash

echo "IST: $(TZ="Asia/Kolkata" date +'%Y-%m-%d %H:%M:%S')"
echo "GMT: $(TZ="GMT" date +'%Y-%m-%d %H:%M:%S')"
echo "UTC: $(TZ="UTC" date +'%Y-%m-%d %H:%M:%S')"
echo "ET:  $(TZ="America/New_York" date +'%Y-%m-%d %H:%M:%S')"
