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
    line = line.strip()
    numbers = line.split(',')
    for number in numbers:
        if int(number) % 2 == 0:
            print('%s\t%s' % (number, 'EVEN'))

        elif int(number) % 2 != 0:
            print('%s\t%s' % (number, 'ODD'))