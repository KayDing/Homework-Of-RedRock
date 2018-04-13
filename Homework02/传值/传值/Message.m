//
//  Message.m
//  传值
//
//  Created by 丁磊 on 2018/4/13.
//  Copyright © 2018年 丁磊. All rights reserved.
//

#import "Message.h"
#import "Date.h"

@interface Message () <DateDelegate>

@end

@implementation Message


- (void)dateOfToday:(NSString *)date{
    NSLog(@"%@",date);
}

@end

