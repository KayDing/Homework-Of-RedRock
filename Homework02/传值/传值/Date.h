//
//  Date.h
//  传值
//
//  Created by 丁磊 on 2018/4/13.
//  Copyright © 2018年 丁磊. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^sendValueBlock)(NSString *value);


@protocol DateDelegate <NSObject>
@required
- (void)dateOfToday:(NSString *)date;

@end


@interface Date : NSObject


@property (nonatomic, copy)sendValueBlock sendValueBlock;

@property (nonatomic, strong) NSString *Date;

@property (nonatomic, strong) id<DateDelegate>delegate;

- (void)DateOfToday;
- (void)Value;
@end
