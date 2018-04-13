//
//  NotificationListener.h
//  传值
//
//  Created by 丁磊 on 2018/4/13.
//  Copyright © 2018年 丁磊. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NotificationListener : NSObject


@property (nonatomic , copy) NSString *name;

- (void) method1:(NSNotification *)noteInfo;
@end
