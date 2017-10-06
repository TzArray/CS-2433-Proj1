#!/usr/bin/env bash
if [ -d Emails ]; then
  rm -r Emails
fi
mkdir Emails
date=$1
awk -f back.awk p4Customer.txt
echo "$date"