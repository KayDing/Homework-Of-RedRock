//
//  ViewController.m
//  Level_2
//
//  Created by 丁磊 on 2018/3/27.
//  Copyright © 2018年 丁磊. All rights reserved.
//

#import "ViewController.h"
#import "MDLViewController.h"


@interface ViewController ()

@property (nonatomic, strong) UIButton *btn;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   、
    self.view.backgroundColor = [UIColor whiteColor];
    self.btn = [[UIButton alloc]initWithFrame:CGRectMake(70, 300, 300, 300)];
    self.btn.backgroundColor = [UIColor redColor];
    [self.btn setTitle:@"push到下一页面" forState:UIControlStateNormal];
    [self.btn addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.btn];
    // Do any additional setup after loading the view.
}

- (void)click{
    MDLViewController *vc = [[MDLViewController alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
