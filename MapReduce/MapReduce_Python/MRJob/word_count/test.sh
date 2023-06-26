#!/bin/bash

# Taking user inputs for file
read -p "Enter program file address : " program_file
read -p "Enter test file address : " test_file

# Run command
python3 $program_file $test_file