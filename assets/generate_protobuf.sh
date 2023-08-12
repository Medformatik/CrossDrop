#!/bin/bash

ls protobuf_source | xargs protoc --dart_out=protobuf --proto_path=protobuf_source
