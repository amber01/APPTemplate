//
//  ViewController.h
//  妈妈去哪儿
//
//  Created by shlity on 15/6/1.
//  Copyright (c) 2015年 shlity. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseNavigationController.h"
#import "HomeViewController.h"
#import "StoreViewController.h"
#import "ShoppingViewController.h"
#import "MineViewController.h"
#import "MoreViewController.h"

@interface MainViewController : UITabBarController
{
    HomeViewController      *homeVC;
    StoreViewController     *storeVC;
    ShoppingViewController  *shoppingVC;
    MineViewController      *mineVC;
    MoreViewController      *moreVC;
}

@end

