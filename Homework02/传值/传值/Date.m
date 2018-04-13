//
//  Date.m
//  传值
//
//  Created by 丁磊 on 2018/4/13.
//  Copyright © 2018年 丁磊. All rights reserved.
//

#import "Date.h"
#import "Message.h"

@implementation Date

- (void)Value{
    NSString *date1 = @"2018.4.13";
    self.sendValueBlock(date1);
}


- (void)DateOfToday{
    self.Date = @"2018.4.13";
    [self.delegate dateOfToday:self.Date];
}
@end
