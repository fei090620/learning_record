#!/bin/bash

mkdir -p pb

python3 -m grpc.tools.protoc -I. \
       -I/usr/local/include \
       -I$GOPATH/src \
       -I$GOPATH/src/github.com/grpc-ecosystem/grpc-gateway/third_party/googleapis \
       --go_out=Mgoogle/api/annotations.proto=github.com/grpc-ecosystem/grpc-gateway/third_party/googleapis/google/api,plugins=grpc:. \
       pb/helloworld.proto
