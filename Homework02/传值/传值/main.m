//
//  main.m
//  传值
//
//  Created by 丁磊 on 2018/4/13.
//  Copyright © 2018年 丁磊. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Message.h"
#import "Date.h"
#import "NotificationSender.h"
#import "NotificationListener.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //        代理传值
        Message *message = [[Message alloc] init];
        Date *date = [[Date alloc] init];
        date.delegate = message;
        [date DateOfToday];
        
        //        监听传值
        NotificationSender *sender1 = [[NotificationSender alloc] init];
        NotificationListener *listener1 = [[NotificationListener alloc] init];
        NSNotificationCenter *notificationcenter = [NSNotificationCenter defaultCenter];
        [notificationcenter addObserver:listener1 selector:@selector(method1:) name:@"name1" object:sender1];
        [notificationcenter postNotificationName:@"name1" object:sender1 userInfo:@{@"title":@"123",@"content":@"2018.4.13"}];
        
        //        block传值
        date.sendValueBlock = ^(NSString *str){
            NSLog(@"%@",str);
        };
        [date Value];
    }
    
    return 0;
}
