#!/bin/bash
cat lastlog2.out lastlog1.out | sed -f p2a.sed | sort | uniq -c | sed -f p2b.sed > p2b.out
exit 0