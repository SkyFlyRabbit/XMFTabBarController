//
//  TabBarController.m
//  XMFTabBarDemo
//
//  Created by 牛操盘1 on 15/9/7.
//  Copyright (c) 2015年 牛操盘1. All rights reserved.
//

#import "TabBarController.h"

@interface TabBarController ()

/**
 *  @author 牛操盘1, 16-06-12
 *
 *  ///
 */

@end

@implementation TabBarController

- (void)viewDidLoad
{
    self.titleArray = @[@"高山", @"海洋", @"陆地", @"河流", @"峡谷"];
    self.normalImageArray = @[[UIImage imageNamed:@"0.jpg"], [UIImage imageNamed:@"1.jpg"], [UIImage imageNamed:@"6.jpg"], [UIImage imageNamed:@"3.jpg"], [UIImage imageNamed:@"4.jpg"]];
    self.highlightedImageArray = @[[UIImage imageNamed:@"5.jpg"], [UIImage imageNamed:@"5.jpg"], [UIImage imageNamed:@"5.jpg"], [UIImage imageNamed:@"5.jpg"], [UIImage imageNamed:@"5.jpg"]];
    self.normalTitleColor = [UIColor blueColor];
    self.highlightedTitleColor = [UIColor magentaColor];
    self.selectedOrder = 3;
    
    [super viewDidLoad];
    
    self.changeOrder = 2;

    NSString * str = @"12";
    [str integerValue];
    
    str = @"2";
    str = @"3";
    str = @"4";
    str = @"5";
    
//    NSString * str = @"5";
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
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
