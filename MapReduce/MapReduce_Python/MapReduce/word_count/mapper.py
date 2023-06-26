#!/usr/bin/env python

"""
Mapper File

Mapper file consists of 'Mapper Function'.
Mapper function processes the input from file using
standard input and transfers it to the reducer function
where the data is processed as desired.
"""

import sys

for line in sys.stdin:
    # Reading evey line from stdin
    # Stripping the line to remove any trailing whitespaces
    # Splitting the line to extract every word
    line = line.strip()
    line = line.split()
    # Mapping every word with 1
    for word in line:
        print('%s\t%s' % (word,1))