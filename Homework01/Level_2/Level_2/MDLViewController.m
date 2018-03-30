//
//  MDLViewController.m
//  Level_2
//
//  Created by 丁磊 on 2018/3/27.
//  Copyright © 2018年 丁磊. All rights reserved.
//

#import "MDLViewController.h"
#import "UINavigationController+shouldPopExtension.h"

@interface MDLViewController ()<navigationShouldPop>

@end

@implementation MDLViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    // Do any additional setup after loading the view.
}

- (BOOL)navigationShouldPop {
    
    //    [self.navigationController popToRootViewControllerAnimated:YES];
    UIAlertController* alert = [UIAlertController alertControllerWithTitle:@" "
                                                                   message:@"是否要pop回上一页面" preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"Yes" style:UIAlertActionStyleDefault
                                                          handler:^(UIAlertAction * action) {
                                                               [self.navigationController popToRootViewControllerAnimated:YES];
                                                          }];
    UIAlertAction* cancelAction = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleDefault
                                                         handler:^(UIAlertAction * action) {
                                                             NSLog(@"action = %@", action);
                                                         }];
    
    [alert addAction:defaultAction];
    [alert addAction:cancelAction];
    [self presentViewController:alert animated:YES completion:nil];
    return false;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
