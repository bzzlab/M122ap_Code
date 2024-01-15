#!/bin/sh
# if no arguments has been provided
if test $# -lt 3;then #??
  # then show an error message and exit the script with error code 1
  echo "Error: Three arguments is required:"  #??
  echo "ticker"  #??
  echo "start- and end-time in ISO-format."  #??
  echo "Exit script."  #??
  exit 1  #??
fi  #??

# Symbol of stock i.e. MSFT for Microsoft
ticker=$1
# How to convert an ISO date to epoch Unix Timestamp with bash?
# More details see here https://www.unixtimestamp.com/
#
# date -d "YYYY-MM-DDTHH:MM:SS" +%s
start_time=$(date -d $2"T00:00:00" +%s)
end_time=$(date -d $3"T00:00:00" +%s)
# interval is replaced with “1d” (daily), “1wk” (weekly), or “1mo” (monthly)
interval="1wk"
url="https://query1.finance.yahoo.com/v7/finance/download/$ticker?period1=$start_time&period2=$end_time&interval=$interval&events=history"
echo "$url..."
# https://flaviocopes.com/http-curl/
curl -X GET ${url}
