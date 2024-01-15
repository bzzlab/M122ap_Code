#!/bin/sh
# Read file
file=$1 #??

# if no argument has been provided
if test $# -lt 1;then #??
  # then show an error message and exit the script with error code 1
  echo "Error: One file argument is required!"  #??
  echo "Exit script."  #??
  exit 1  #??
fi  #??


# if file does not exit ..
if [ ! -f $file ]; then  #??
  # then show an error message and exit the script with error code 2.
  echo $file does not exist!  #??
  exit 2  #??
fi  #??

# empty temporary file.tmp
cat /dev/null > "$file.tmp"  #??

# while reading each line of the file ..
cat $file | while read line; do  #??
  # remove line with Dividend and assign it to tmp-variable
  tmp=$(echo "$line" | sed '/Dividend/d')  #??
  # cut tmp-variable by "-delimiter and show 1st part
  # and save it in part1-variable
  PART1=$(echo "$tmp"| cut -d'"' -f1)  #??
  # cut tmp-variable by "-delimiter, show 2nd part and replace , by '
  # and save it in part2-variable
  PART2=$(echo "$tmp"| cut -d'"' -f2| sed "s/,/\'/g")  #??
  # redirect by appending part1+part2-variable into temporary file
  echo "$PART1$PART2" >> $file.tmp  #??
done  #??
# remove all empty lines in the  temporary file and add line count
cat "$file.tmp"  | sed '/^$/d' | cat -n  #??
