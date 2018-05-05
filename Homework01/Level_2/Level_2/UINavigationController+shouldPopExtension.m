//
//  UINavigationController+shouldPopExtension.m
//  Level_2
//
//  Created by 丁磊 on 2018/3/27.
//  Copyright © 2018年 丁磊. All rights reserved.
//

#import "UINavigationController+shouldPopExtension.h"
#import <objc/runtime.h>

@implementation UINavigationController (shouldPopExtension)

+ (void)load{
    
        Method originalMethod = class_getInstanceMethod([self class], @selector(navigationBar:shouldPopItem:));
        Method sizzledMethod = class_getInstanceMethod([self class], @selector(my_navigationBar:shouldPopItem:));
        method_exchangeImplementations(originalMethod, sizzledMethod);
}


- (BOOL)my_navigationBar:(UINavigationBar *)navigationBar shouldPopItem:(nonnull UINavigationItem *)item
{
    UIViewController *vc = self.topViewController;
    if ([vc conformsToProtocol:@protocol(navigationShouldPop)]) {
        if ([(id<navigationShouldPop>)vc navigationShouldPop]) {
            return [self my_navigationBar:navigationBar shouldPopItem:item];
        }else{
            return NO;
        }
    }
    return [self my_navigationBar:navigationBar shouldPopItem:item];
}


@end
