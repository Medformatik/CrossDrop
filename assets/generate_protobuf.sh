#!/bin/bash

ls protobuf_source | xargs protoc --dart_out=../lib/nearby_share/protobuf --proto_path=protobuf_source
