#!/usr/bin/env bash

# To install gRPC ruby tools first run:
# $ gem install grpc grpc-tools
grpc_tools_ruby_protoc -I=../../blockjoy/api/ui_v1 authentication_service.proto common.proto --ruby_out=./rb_out --grpc_out=./rb_out
