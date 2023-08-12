protoc --proto_path=protobuf_source/ --dart_out=protobuf/ protobuf_source/device_to_device_messages.proto
protoc --proto_path=protobuf_source/ --dart_out=protobuf/ protobuf_source/offline_wire_formats.proto     
protoc --proto_path=protobuf_source/ --dart_out=protobuf/ protobuf_source/securegcm.proto           
protoc --proto_path=protobuf_source/ --dart_out=protobuf/ protobuf_source/securemessage.proto 
protoc --proto_path=protobuf_source/ --dart_out=protobuf/ protobuf_source/ukey.proto         
protoc --proto_path=protobuf_source/ --dart_out=protobuf/ protobuf_source/wire_format.proto