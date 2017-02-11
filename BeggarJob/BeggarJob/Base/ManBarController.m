//
//  ManBarController.m
//  BeggarJob
//
//  Created by Zhanggaoju on 2017/2/10.
//  Copyright © 2017年 Zhanggaoju. All rights reserved.
//

#import "ManBarController.h"

#import "ManNavController.h"
#import "JobViewController.h"
#import "TaskViewController.h"
#import "NewViewController.h"
#import "MineViewController.h"

@interface ManBarController ()<MJTabBarViewDelegate>

@end

@implementation ManBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self initViewControllers];
    
    [self initMJTabBarView];
}

- (void)initViewControllers
{
    NSMutableArray *vcArrayM = [NSMutableArray array];

    JobViewController *jobVC = [[JobViewController alloc] init];
    ManNavController *jobNavVC = [[ManNavController alloc] initWithRootViewController:jobVC];
    [jobNavVC setFullScreenPopGesture:YES];//全屏返回手势
    [vcArrayM addObject:jobNavVC];
    
    TaskViewController *taskVC = [[TaskViewController alloc] init];
    ManNavController *taskNavVC = [[ManNavController alloc] initWithRootViewController:taskVC];
    [taskNavVC setFullScreenPopGesture:YES];
    [vcArrayM addObject:taskNavVC];
    
    NewViewController *newVC = [[NewViewController alloc] init];
    ManNavController *newNavVC = [[ManNavController alloc] initWithRootViewController:newVC];
    [newNavVC setFullScreenPopGesture:YES];
    [vcArrayM addObject:newNavVC];
    
    MineViewController *mineSourceVC = [[MineViewController alloc] init];
    ManNavController *mineSourceNavVC = [[ManNavController alloc] initWithRootViewController:mineSourceVC];
    [mineSourceNavVC setFullScreenPopGesture:YES];
    [vcArrayM addObject:mineSourceNavVC];
    
    self.viewControllers = vcArrayM;
}

- (void)initMJTabBarView
{
    MJTabBarView *mjTabBar = [[MJTabBarView alloc] initWithFrame:self.tabBar.bounds];
    mjTabBar.delegate = self;
    CGSize iconSize = CGSizeMake(23, 23);
    NSArray *normalArray = @[[UIImage imageNamed:@"A.png"],
                             [UIImage imageNamed:@"B.png"],
                             [UIImage imageNamed:@"C.png"],
                             [UIImage imageNamed:@"D.png"]];
    NSArray *selectArray = @[[UIImage imageNamed:@"A_a.png"],
                             [UIImage imageNamed:@"B_b.png"],
                             [UIImage imageNamed:@"C_c.png"],
                             [UIImage imageNamed:@"D_d.png"]];
    [mjTabBar setMJTabBarNormalIcons:normalArray selectedIcons:selectArray iconSize:iconSize];
    [mjTabBar setBackgroundColor:kRGBColor(50, 55, 58)];
    NSArray *titleArray = @[@"兼职", @"每日赚", @"消息", @"我的"];
    [mjTabBar setMJTabBarTexts:titleArray normalTextColor:[UIColor darkGrayColor] selectedTextColor:MainDefaultColor];
    [mjTabBar showMJTabBarInTabBarController:self];
}

#pragma mark - MJTabBarDelegate

- (void)tabBar:(MJTabBarView *)tabBar
  selectedFrom:(NSInteger)from
            to:(NSInteger)to
{
    self.selectedIndex = to;
}

#pragma mark -

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
