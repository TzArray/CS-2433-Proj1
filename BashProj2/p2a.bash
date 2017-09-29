#!/bin/bash
sed -f p2aDollar.sed lastlog1.out > with
sed -f p2a.sed lastlog2.out > without
grep -f with without | sort > p2a.out
rm with
rm without
exit 0