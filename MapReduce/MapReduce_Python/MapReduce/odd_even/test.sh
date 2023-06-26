#!/bin/bash

# Taking user inputs for file
read -p "Enter input test file address : " input_file
read -p "Enter mapper file address : " mapper_file
read -p "Enter reducer file address : " reducer_file

# Run command
cat $input_file | python3 $mapper_file | sort -k1,1 | python3 $reducer_file