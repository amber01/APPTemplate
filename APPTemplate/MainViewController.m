//
//  ViewController.m
//  妈妈去哪儿
//
//  Created by shlity on 15/6/1.
//  Copyright (c) 2015年 shlity. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (instancetype)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    [self createdTabBarView];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    self.navigationController.navigationBarHidden = YES;
}

- (void)createdTabBarView
{
    homeVC     = [[HomeViewController alloc]init];
    storeVC    = [[StoreViewController alloc]init];
    shoppingVC = [[ShoppingViewController alloc]init];
    mineVC     = [[MineViewController alloc]init];
    moreVC     = [[MoreViewController alloc]init];
    
    //home
    UITabBarItem *houmeItem =[[UITabBarItem alloc]initWithTitle:@"首页" image:nil tag:1];
    houmeItem.image = [UIImage imageNamed:@"tabbar_home"];
    houmeItem.selectedImage = [UIImage imageNamed:@"tabbar_home"];
    BaseNavigationController *homeNav = [[BaseNavigationController alloc]initWithRootViewController:homeVC];
    self.tabBar.tintColor = [UIColor colorWithRed:241/255.0 green:98/255.0 blue:101/255.0 alpha:1];  //改变tabBar上的按钮文字颜色
    homeVC.tabBarItem = houmeItem;
    
    //store
    UITabBarItem *storeItem =[[UITabBarItem alloc]initWithTitle:@"店铺" image:nil tag:2];
    storeItem.image = [UIImage imageNamed:@"tabbar_store"];
    storeItem.selectedImage = [UIImage imageNamed:@"tabbar_store"];
    BaseNavigationController *storeNav = [[BaseNavigationController alloc]initWithRootViewController:storeVC];
    storeVC.tabBarItem = storeItem;
    
    //shopping
    UITabBarItem *shoppingItem =[[UITabBarItem alloc]initWithTitle:@"购物车" image:nil tag:3];
    shoppingItem.image = [UIImage imageNamed:@"tabbar_shopping"];
    shoppingItem.selectedImage = [UIImage imageNamed:@"tabbar_shopping"];
    BaseNavigationController *shoppingNav = [[BaseNavigationController alloc]initWithRootViewController:shoppingVC];
    shoppingVC.tabBarItem = shoppingItem;
    
    //mine
    UITabBarItem *mineItem =[[UITabBarItem alloc]initWithTitle:@"我的" image:nil tag:4];
    mineItem.image = [UIImage imageNamed:@"tabbar_mine"];
    mineItem.selectedImage = [UIImage imageNamed:@"tabbar_mine"];
    BaseNavigationController *mineNav = [[BaseNavigationController alloc]initWithRootViewController:mineVC];
    mineVC.tabBarItem = mineItem;
    
    //more
    UITabBarItem *moreItem =[[UITabBarItem alloc]initWithTitle:@"更多" image:nil tag:5];
    moreItem.image = [UIImage imageNamed:@"tabbar_more"];
    moreItem.selectedImage = [UIImage imageNamed:@"tabbar_more"];
    BaseNavigationController *moreNav = [[BaseNavigationController alloc]initWithRootViewController:moreVC];
    moreVC.tabBarItem = moreItem;
    
    
    NSArray *array = @[homeNav,storeNav,shoppingNav,mineNav,moreNav];
    [self setViewControllers:array animated:YES];
}

#pragma mark -- other
- (void)startHideTabbar
{
    self.tabBar.hidden = YES;
}

- (void)startShowTabbar
{
    self.tabBar.hidden = NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:YES];
    [[NSNotificationCenter defaultCenter]removeObserver:self];
}

@end
