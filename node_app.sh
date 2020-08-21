#!/bin/bash
###############################################################################
# Project: FIUBA - CEIoT - DAW 
# Date: June 2020
# Usage:
#       ./serve_node_app_net.sh "$PWD" ws/index.js 3000 mysql-net
# 
###############################################################################

#########[ Settings & Data ]###################################################

# HOST SETTINGS
HOST_APP_DIR=$PWD/back-end
ENTRY_POINT=$PWD/back-end/index.js
HOST_PORT=3000
HOST_NET=mysql-net
# CONTAINER SETTINGS
CONTAINER_NAME=nodejs-container
CONTAINER_APP_DIR=/home/node/app
CONTAINER_PORT=3000

#########[ Script commands ]###################################################


docker run  \
--rm  \
--interactive \
--name $CONTAINER_NAME \
--network $HOST_NET \
--publish $HOST_PORT:$CONTAINER_PORT \
--volume $HOST_APP_DIR:$CONTAINER_APP_DIR \
abassi/nodejs-server:10.0-dev \
nodemon $CONTAINER_APP_DIR/$ENTRY_POINT

#########[ Enf of file ]#######################################################