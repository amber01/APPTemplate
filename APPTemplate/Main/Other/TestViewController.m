//
//  TestViewController.m
//  APPTemplate
//
//  Created by shlity on 15/8/13.
//  Copyright (c) 2015年 shlity. All rights reserved.
//

#import "TestViewController.h"
#import "MyViewController.h"

@interface TestViewController ()

@end

@implementation TestViewController

- (void)viewDidLoad {
    

    [super viewDidLoad];
    self.navTitle = @"商品详情";
    
    self.view.backgroundColor  = [UIColor brownColor];
    
    UIButton *clickBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    clickBtn.frame = CGRectMake(self.view.frame.size.width / 2 - 100, self.view.frame.size.height/2 - 15, 200, 40);
    [clickBtn setBackgroundColor:[UIColor orangeColor]];
    [clickBtn setTitle:@"click" forState:UIControlStateNormal];
    [clickBtn addTarget:self action:@selector(clickAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:clickBtn];
    
    [self createTopView];
}

- (void)createTopView
{
    UIButton  *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(self.view.frame.size.width - 40, 64/2 - 5, 35, 35);
    [button setImage:[UIImage imageNamed:@"shops_btn"] forState:UIControlStateNormal];
    [self.navigationView addSubview:button];
}

- (void)clickAction
{
    MyViewController  *myVC = [[MyViewController alloc]init];
    [self.navigationController pushViewController:myVC animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    //BaseNavigationController *baseNav = (BaseNavigationController *)self.navigationController;
    //baseNav.isBack = NO;
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:YES];
    //BaseNavigationController *baseNav = (BaseNavigationController *)self.navigationController;
    //baseNav.isBack = YES;
}

@end
