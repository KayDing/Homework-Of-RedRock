//
//  UINavigationController+shouldPopExtension.h
//  Level_2
//
//  Created by 丁磊 on 2018/3/27.
//  Copyright © 2018年 丁磊. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol navigationShouldPop<NSObject>

- (BOOL)navigationShouldPop;

@end

@interface UINavigationController (shouldPopExtension)

@end
