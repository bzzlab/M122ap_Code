#!/bin/sh
# Read file
# if no argument has been provided
  # then show an error message and exit the script with error code 1
# if file does not exit ..
  # then show an error message and exit the script with error code 2.
# empty temporary file.tmp
# while reading each line of the file ..
  # remove line with Dividend and assign it to tmp-variable
  # cut tmp-variable by "-delimiter and show 1st part
  # and save it in part1-variable
  # cut tmp-variable by "-delimiter, show 2nd part and replace , by '
  # and save it in part2-variable
  # redirect by appending part1+part2-variable into temporary file
# remove all empty lines in the  temporary file and add line count
