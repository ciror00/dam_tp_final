#!/bin/bash

# Declaraciones SQL

IMAGE_SQL=mysql:5.7

NETWORK_NAME=mysql-net

CONTAINER_SQL=mysql-server
CONTAINER_DB_PATH=/var/lib/mysql
MACHINE_DB_PATH=$PWD/DB

DB_PORT=3306

PASSWORD=userpass

# Ejecucion de Script de la base de datos

printf "[MSJ]\t Iniciando Base de Datos\n"
printf "[MSJ]\t imagen: $IMAGE_SQL\n"
printf "[MSJ]\t path local: $MACHINE_DB_PATH\n"
printf "[MSJ]\t puerto: $DB_PORT\n"

docker network create --driver bridge $NETWORK_NAME

docker run \
--rm \
--detach \
--name $CONTAINER_SQL \
--network $NETWORK_NAME \
--env MYSQL_ROOT_PASSWORD=$PASSWORD \
--volume $MACHINE_DB_PATH:$CONTAINER_DB_PATH \
-p $DB_PORT:$DB_PORT \
$IMAGE_SQL

# Declaraciones de PhpMyAdmin

IMAGE_PHP=phpmyadmin/phpmyadmin
CONTAINER_PHP=phpadmin

PHP_PORT=8085

# Ejecucion de script de PhpMyAdmin

printf "[MSJ]\t Iniciando PhpMyAdmin\n"
printf "[MSJ]\t imagen: $IMAGE_PHP\n"
printf "[MSJ]\t puerto: $PHP_PORT\n"

docker run \
--rm \
--detach \
--name $CONTAINER_PHP \
--network $NETWORK_NAME \
--env PMA_HOST=$CONTAINER_SQL \
--publish $PHP_PORT:80 \
$IMAGE_PHP

# Declaracions de NodeJS

CONTAINER_NODEJS=nodejs-container

APP_DIR=$PWD/back-end
ENTRY_POINT=$PWD/back-end/index.js
NODEJS_PORT=3000
CONTAINER_APP_DIR=/home/node/app

# Ejecucion de script de NodeJS

printf "[MSJ]\t Iniciando NodeJs\n"
printf "[MSJ]\t cointainer: $CONTAINER_NODEJS\n"
printf "[MSJ]\t puerto: $NODEJS_PORT\n"

docker run  \
--rm  \
--interactive \
--name $CONTAINER_NODEJS \
--network $NETWORK_NAME \
--publish $NODEJS_PORT:$NODEJS_PORT \
--volume $APP_DIR:$CONTAINER_APP_DIR \
abassi/nodejs-server:10.0-dev \
nodemon $CONTAINER_APP_DIR/$ENTRY_POINT