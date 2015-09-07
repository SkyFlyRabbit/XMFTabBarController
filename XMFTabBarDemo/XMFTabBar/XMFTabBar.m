//
//  XMFTabBar.m
//  XMFTabBarDemo
//
//  Created by 牛操盘1 on 15/9/7.
//  Copyright (c) 2015年 牛操盘1. All rights reserved.
//

#import "XMFTabBar.h"
#import "XMFTabBarButton.h"

#define kUIScreenWidth [UIScreen mainScreen].bounds.size.width

@interface XMFTabBar ()

@property (nonatomic, strong) UIView   * tabBarView;
@property (nonatomic, strong) UIView   * dividerView;
@property (nonatomic, strong) UIButton * selectedButton;
@property (nonatomic, strong) NSMutableArray * buttonArray;

@end

@implementation XMFTabBar

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self loadTabItem];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (void)loadTabItem
{
    CGFloat width = kUIScreenWidth / self.titleArray.count;
    for (int i = 0; i < self.titleArray.count; i++) {
        XMFTabBarButton * button = [XMFTabBarButton buttonWithType:UIButtonTypeCustom];
        button.frame = CGRectMake(width * i, 0, width, 49);
        button.titleLabel.font = [UIFont systemFontOfSize:8.0];
        [button setTitle:self.titleArray[i] forState:UIControlStateNormal];
        
        if (self.normalTitleColor) {
            [button setTitleColor:self.normalTitleColor forState:UIControlStateNormal];
        }else {
            [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        }
        
        if (self.highlightedTitleColor) {
            [button setTitleColor:self.highlightedTitleColor forState:UIControlStateSelected];
        }else {
            [button setTitleColor:[UIColor redColor] forState:UIControlStateSelected];
        }
        
        if (self.selectedOrder == i) {
            button.selected = YES;
            self.selectedButton = button;
        }
        
        [button setImage:self.normalImageArray[i] forState:UIControlStateNormal];
        [button setImage:self.highlightedImageArray[i] forState:UIControlStateSelected];
        [button addTarget:self action:@selector(changeItem:) forControlEvents:UIControlEventTouchUpInside];
        [self.buttonArray addObject:button];
        [self.tabBarView addSubview:button];
    }
}

#pragma mark - Button Click Method

- (void)changeItem:(UIButton *)button
{
    self.selectedButton.selected = NO;
    button.selected = YES;
    self.selectedButton = button;
}

#pragma mark - Lazy Loding(Getter Method)

- (UIView *)tabBarView
{
    if (_tabBarView == nil) {
        [self.tabBar removeFromSuperview];
        CGRect rect = self.tabBar.frame;
        self.tabBarView = [[UIView alloc] init];
        _tabBarView.frame = rect;
        _tabBarView.backgroundColor = [UIColor whiteColor];
        [_tabBarView addSubview:self.dividerView];
        [self.view addSubview:_tabBarView];
    }
    return _tabBarView;
}

- (UIView *)dividerView
{
    if (_dividerView == nil) {
        self.dividerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, kUIScreenWidth, 1)];
        _dividerView.backgroundColor = [UIColor redColor];
    }
    return _dividerView;
}

- (NSMutableArray *)buttonArray
{
    if (_buttonArray == nil) {
        self.buttonArray = [@[] mutableCopy];
    }
    return _buttonArray;
}

#pragma mark - Setter Order

- (void)setChangeOrder:(NSInteger)changeOrder
{
    if (changeOrder >= 0 && changeOrder < self.titleArray.count) {
        self.selectedButton.selected = NO;
        self.selectedButton = self.buttonArray[changeOrder];
        self.selectedButton.selected = YES;
    }
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
