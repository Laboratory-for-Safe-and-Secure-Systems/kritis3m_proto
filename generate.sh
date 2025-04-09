#!/bin/bash
# Generate Go code for all proto files

protoc --experimental_allow_proto3_optional \
    --go_out=./southbound --go_opt=paths=source_relative \
    --go-grpc_out=./southbound --go-grpc_opt=paths=source_relative \
    -I=proto \
    proto/node.proto \

protoc --experimental_allow_proto3_optional \
    --go_out=./est --go_opt=paths=source_relative \
    --go-grpc_out=./est --go-grpc_opt=paths=source_relative \
    -I=proto \
    proto/est.proto \

protoc --experimental_allow_proto3_optional \
    --go_out=./control_plane --go_opt=paths=source_relative \
    --go-grpc_out=./control_plane --go-grpc_opt=paths=source_relative \
    -I=proto \
    proto/control_plane.proto \



go mod tidy