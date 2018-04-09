#!/bin/bash

WORK_DIR=/work
GRPC_PHP_PLUGIN_PATH=/var/local/git/grpc/bins/opt/grpc_php_plugin

if [ ! -d "$WORK_DIR" ]; then
  echo "$WORK_DIR is not mounted"
  exit 1
fi

mkdir -p $WORK_DIR/out

protoc \
  --proto_path=$WORK_DIR \
  --php_out=$WORK_DIR/out \
  --grpc_out=$WORK_DIR/out \
  --plugin=protoc-gen-grpc=$GRPC_PHP_PLUGIN_PATH \
  $WORK_DIR/*.proto

