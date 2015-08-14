//
//  MyViewController.m
//  APPTemplate
//
//  Created by shlity on 15/8/14.
//  Copyright (c) 2015年 shlity. All rights reserved.
//

#import "MyViewController.h"
#import "OneViewController.h"

@interface MyViewController ()

@end

@implementation MyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navTitle = @"商家详情";
    
    self.view.backgroundColor = [UIColor blueColor];
    
    UIButton *clickBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    clickBtn.frame = CGRectMake(self.view.frame.size.width / 2 - 100, self.view.frame.size.height/2 - 15, 200, 40);
    [clickBtn setBackgroundColor:[UIColor orangeColor]];
    [clickBtn setTitle:@"click" forState:UIControlStateNormal];
    [clickBtn addTarget:self action:@selector(clickAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:clickBtn];
}

- (void)clickAction
{
    OneViewController  *oneVC = [[OneViewController alloc]init];
    [self.navigationController pushViewController:oneVC animated:YES];
}


@end
