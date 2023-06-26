#!/usr/bin/env python

"""
Reducer File

Reducer file collects the data from mapper and
processes the recieved data and gives desired
output.
"""

import sys

even_count = 0
odd_count = 0
even_sum = 0
odd_sum = 0

for line in sys.stdin:
    line = line.strip()
    number, key = line.split('\t')

    try:
        number = int(number)
    except ValueError:
        continue

    if key == 'EVEN':
        even_count += 1
        even_sum += number
    elif key == 'ODD':
        odd_count += 1
        odd_sum += number
    
print('SUM OF ODD NUMBERS = %s' % (odd_sum))
print('SUM OF EVEN NUMBERS = %s' % (even_sum))
print('COUNT OF ODD NUMBERS = %s' % (odd_count))
print('COUNT OF EVEN NUMBERS = %s' % (even_count))