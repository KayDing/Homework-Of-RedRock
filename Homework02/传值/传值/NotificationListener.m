//
//  NotificationListener.m
//  传值
//
//  Created by 丁磊 on 2018/4/13.
//  Copyright © 2018年 丁磊. All rights reserved.
//

#import "NotificationListener.h"

@implementation NotificationListener


- (void) method1:(NSNotification *)noteInfo
{
    
    NSLog(@"%@", noteInfo.userInfo[@"content"]);
}

- (void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver: self];
}
@end

