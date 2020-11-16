NETWORK="$1"
if [ -z "$NETWORK" ]; then
    NETWORK="testnet"
fi
HOST="142.93.227.152" PORT="4200" yarn build:"$NETWORK"
EXPLORER_HOST="142.93.227.152" EXPLORER_PORT="4200" pm2 start /home/lionel/core-explorer/express-server.js --name explorer
