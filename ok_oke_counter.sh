#!/bin/bash
# File name: ok_oke_counter.sh
# Description: Counts all the lines in the given files (in this case all_ok.txt and all_oke.txt).
# Author: Thijmen Adam
# Date: 26-03-2022

echo "All the times a tweet contains ok or OK: " 
cat all_ok.txt | wc -l

echo "All the times a tweet contains oke or oké: " 
cat all_oke.txt | wc -l