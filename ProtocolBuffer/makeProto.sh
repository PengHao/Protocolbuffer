#!/bin/sh

#  makeProto.sh
#  ProtocolBuffer
#
#  Created by peng hao on 2017/11/8.
#  Copyright © 2017年 wolfpeng. All rights reserved.


#protoc --cpp_out=. Message.proto

if [ -d include ];then
    rm -rf include
fi


function cpfile()
{
    echo $1
    echo $0
    var=include/$1
    path=${var%/*}

    if [ ! -d include ];then
        mkdir -r path
    fi
    cp $1 var
}

mkdir include
find google -name '*.h' | xargs -I[] mkdir -r include/${[]%/*}
