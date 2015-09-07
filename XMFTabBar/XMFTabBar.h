//
//  XMFTabBar.h
//  XMFTabBarDemo
//
//  Created by 牛操盘1 on 15/9/7.
//  Copyright (c) 2015年 牛操盘1. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XMFTabBar : UITabBarController

/*
 * UITabBarController's item image when unselected
 */
@property (nonatomic, copy  ) NSArray   * normalImageArray;

/*
 * UITabBarController's item image when selected
 */
@property (nonatomic, copy  ) NSArray   * highlightedImageArray;

/*
 * UITabBarController's item titleArray
 */
@property (nonatomic, copy  ) NSArray   * titleArray;

/*
 * UITabBarController's item title normalColor
 */
@property (nonatomic, strong) UIColor   * normalTitleColor;

/*
 * UITabBarController's item title Color when selected
 */
@property (nonatomic, strong) UIColor   * highlightedTitleColor;

/*
 * UITabBarController's item first selected when created
 */
@property (nonatomic, assign) NSInteger selectedOrder;

/*
 * change item selected order when app use
 */
@property (nonatomic, assign) NSInteger changeOrder;

@end
