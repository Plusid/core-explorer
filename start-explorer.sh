NETWORK="$1"
if [ -z "$NETWORK" ]; then
    NETWORK="testnet"
fi
HOST="134.122.119.115" PORT="4200" yarn build:"$NETWORK"
EXPLORER_HOST="134.122.119.115" EXPLORER_PORT="4200" pm2 start /home/lionel/core-explorer/express-server.js --name explorer
