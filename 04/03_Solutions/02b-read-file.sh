# Topic: reading files using while
# Example
# ./02b-reading-files.sh animals.txt
file=$1
if [ ! -f $file ]
then
  echo $file does not exist!
  exit
fi

while read animal; do
  if [[ $animal = "cow" ]]; then
    echo "Found the cow!"
    exit
  fi
  echo $animal
done < $file
