#!/bin/bash

# Need to mine 100 blocks before btc can be spent
sleep 15
curl http://x:secretpw@localhost:48332 -X POST --data '{ "method": "generate", "params": [ '120' ]}'

while true
do 
    echo 'Mining block'
    sleep 10
    curl http://x:secretpw@localhost:48332 -X POST --data '{ "method": "generate", "params": [ '1' ]}'
done