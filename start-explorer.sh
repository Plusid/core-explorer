NETWORK="$1"
if [ -z "$NETWORK" ]; then
    NETWORK="devnet"
fi
HOST="" PORT="" yarn build:"$NETWORK"
EXPLORER_HOST="68.183.102.212" EXPLORER_PORT="4200" pm2 start /home/lionel/core-explorer/express-server.js --name core-explorer
