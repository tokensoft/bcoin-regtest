#!/bin/bash

# Run the mine script in the background
echo 'Launching mine'
/code/scripts/mine.sh &

# Start the bcoin node
node /code/bcoin/bin/node --network=regtest --http-host=0.0.0.0 --wallet-http-host=0.0.0.0 --api-key=secretpw --max-outbound=1 --coinbase-address=RLzyQ3AAHEdijrZvmTPWsWrSi8YwZ8VV3T
