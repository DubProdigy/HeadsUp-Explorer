NETWORK="$1"
if [ -z "$NETWORK" ]; then
    NETWORK="mainnet"
fi
HOST="0.0.0.0" PORT="4200" yarn build:"$NETWORK"
EXPLORER_HOST="0.0.0.0" EXPLORER_PORT="4200" pm2 start /home/headsupracing/headsup-explorer/express-server.js --name hur-explorer
