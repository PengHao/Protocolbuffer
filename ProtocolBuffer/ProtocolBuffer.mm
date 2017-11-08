//
//  ProtocolBuffer.m
//  ProtocolBuffer
//
//  Created by 彭浩 on 16/7/25.
//  Copyright © 2016年 wolfpeng. All rights reserved.
//

#import "ProtocolBuffer.h"
#import "Message.pb.h"

@implementation ProtocolBuffer

- (void) test {
    NSLog(@"test");
    Message *message = new Message();
    Control *control = message->mutable_control();
    control->set_corpus(Control_Action_START);
    std::string output = "";
    message->SerializeToString(&output);
    
    
    Message *newMessage  = new Message();
    newMessage->ParseFromString(output);
    if (newMessage->has_control()) {
        NSLog(@"hans control");
    } else if (newMessage->has_data()) {
        NSLog(@"has data");
    }
}

@end
