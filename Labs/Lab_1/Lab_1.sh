#!/bin/bash

echo "Hi, please, write file name which you want to parse"
read file_name

grep -E -o "(20)\d{2}-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|30|31)  ([0-1][0-9]|2[0-3]):([0-5][0-9]):([0-5][0-9])" $file_name | sort

echo "Good luck!"
