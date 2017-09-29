#!/usr/bin/env bash
awk -f p3aPreSort.awk unsortedNames.txt | sort | awk -f p3aAfterSort.awk > p3a.out