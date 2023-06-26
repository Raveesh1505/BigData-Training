#!/bin/bash

# Taking user input for file locations
read -p "Enter pig file address : " pig_file

pig -x local $pig_file