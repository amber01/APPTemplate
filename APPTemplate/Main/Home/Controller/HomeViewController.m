//
//  HomeViewController.m
//  APPTemplate
//
//  Created by shlity on 15/8/13.
//  Copyright (c) 2015年 shlity. All rights reserved.
//

#import "HomeViewController.h"
#import "TestViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.isBackgroundColor = NO;
    self.navBackgroundColor = [UIColor colorWithRed:242/255.0 green:24/255.0 blue:168/255.0 alpha:1];
    self.navTitle = @"首页";
    
    UIButton *clickBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    clickBtn.frame = CGRectMake(self.view.frame.size.width / 2 - 100, self.view.frame.size.height/2 - 15, 200, 40);
    [clickBtn setBackgroundColor:[UIColor orangeColor]];
    [clickBtn setTitle:@"click" forState:UIControlStateNormal];
    [clickBtn addTarget:self action:@selector(clickAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:clickBtn];
}

- (void)clickAction
{
    TestViewController  *testVC = [[TestViewController alloc]init];
    [testVC setHidesBottomBarWhenPushed:YES];
    [self.navigationController pushViewController:testVC animated:YES];
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
