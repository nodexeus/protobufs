#!/usr/bin/env bash

protoc -I=../../blockjoy/api/ui_v1 authentication_service.proto common.proto --python_out=./py_out
