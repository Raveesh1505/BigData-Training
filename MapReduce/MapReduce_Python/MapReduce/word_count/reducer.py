#!/usr/bin/env python

"""
Reducer File

Reducer file collects the data from mapper and
processes the recieved data and gives desired
output.
"""

import sys

current_word = None
word = None
current_count = 0

for line in sys.stdin:
    line = line.strip()
    # Sperating the mapper content from mapper function
    word, count = line.split('\t', 1)

    # Converting count to int format becuase
    # when read from stdin, it is saved in str. 
    try:
        count = int(count)
    except ValueError:
        continue

    if current_word == word:
        current_count += count
    else:
        if current_word:
            # Write result in stdout
            print('%s\t%s' % (current_word, current_count))
        current_count = count
        current_word = word

if current_word == word:
    print('%s\t%s' % (current_word, current_count))