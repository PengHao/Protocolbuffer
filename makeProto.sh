#!/bin/sh

#  makeProto.sh
#  ProtocolBuffer
#
#  Created by peng hao on 2017/11/8.
#  Copyright © 2017年 wolfpeng. All rights reserved.


protoc --cpp_out=. Message.proto
