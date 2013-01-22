#!/bin/sh
while true ; do
  sleep 0.5
  t=`ruby -e 'puts (Time.now.to_f * 1000).to_i'`
  l=`uptime | ruby -ne 'puts $_.split(" ")[-2]'`
  curl -X POST -d "{"\"type\":\"timeline\",\"name\":\"loadavg\", \"value\": $l, \"timestamp\": $t}" -H 'Content-Type: application/json' http://127.0.0.1:3000/data
done
