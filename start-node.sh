#!/bin/sh

#nodemon 

export PORT=3010
export WEB_MASTER_EMAIL=billrathfon@gmail.com
export NODE_ENV=development
#export NODE_ENV=production

export DEBUG=info:*,danger:*
export DEBUG=$DEBUG,serv-auth:*
export DEBUG=$DEBUG,app-auth:*
echo "DEBUGGING $DEBUG"

DEBUG_LOC8R=true nodemon 
