#!/bin/bash
# Reading arguments with built-in function getopts
#
if test $# -lt 5
then
  printf "%s\n" \
  "Error: Provide at least 5 arguments!" \
  "-f firstname -l lastname -m module -i lb -n note" \
  "Exit script."
  exit 1
fi

# loop for reading all options.
# Order is not relevant.
while getopts "f:l:m:i:n:" option; do
  case $option in
  f ) echo "Parsing -f option"
    echo "index: $OPTIND"
    fname=${OPTARG}
    ;;
  l ) echo "Parsing -l option"
    echo "index: $OPTIND"
    lname=${OPTARG}
    ;;
  m ) echo "Parsing -p option"
    echo "index: $OPTIND"
      module=${OPTARG}
      ;;
  n ) echo "Parsing -n option"
    echo "index: $OPTIND"
    note=${OPTARG}
    ;;
  i ) echo "Parsing -n option"
    echo "index: $OPTIND"
    lb=${OPTARG}
    ;;
  * ) echo "Invalid option"
    ;;
  esac
done

result="$fname|$lname|$module|$lb|$note"
echo $result
echo $result >> notenbuch.txt

