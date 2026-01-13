#!/bin/bash
# Reading arguments with built-in function getopts
#
if test $# -lt 4;then
  printf "%s\n" \
  "Error: Provide at least 4 arguments!" \
  "-f firstname -l lastname -p phone -n note" \
  "Exit script."
  exit 1
fi

# loop for reading all options.
# Order is not relevant.
while getopts "f:l:p:n:" option; do
  case $option in
  f ) echo "Parsing -f option"
    echo "index: $OPTIND"
    fname=${OPTARG}
    ;;
  l ) echo "Parsing -l option"
    echo "index: $OPTIND"
    lname=${OPTARG}
    ;;
  p ) echo "Parsing -p option"
    echo "index: $OPTIND"
      phone=${OPTARG}
      ;;
  n ) echo "Parsing -n option"
    echo "index: $OPTIND"
    note=${OPTARG}
    ;;
  * ) echo "Invalid option"
    ;;
  esac
done

result="$fname|$lname|$phone|$note"
echo $result
echo $result >> myaddrbook1.txt

