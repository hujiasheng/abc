//
//  ManNavController.m
//  BeggarJob
//
//  Created by Zhanggaoju on 2017/2/10.
//  Copyright © 2017年 Zhanggaoju. All rights reserved.
//

#import "ManNavController.h"

@interface ManNavController ()

@end

@implementation ManNavController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //设置导航栏默认颜色
    [self.navigationBar setBarTintColor:MainDefaultColor];
}

//重写
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    [super pushViewController:viewController animated:YES];
    
    //返回按钮
    if (self.childViewControllers.count > 1)
    {
        UIButton *backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        backBtn.frame=CGRectMake(0, 0, 15, 23);
        [backBtn setBackgroundImage:[UIImage imageNamed:@"navigation_back"] forState:0];
        [backBtn addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
        viewController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:backBtn];
    }
}

-(void)backAction
{
    [self popViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
