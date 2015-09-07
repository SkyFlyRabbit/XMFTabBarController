//
//  XMFTabBarButton.m
//  XMFTabBarDemo
//
//  Created by 牛操盘1 on 15/9/7.
//  Copyright (c) 2015年 牛操盘1. All rights reserved.
//

#import "XMFTabBarButton.h"

#define K_TITLE_HEIGTH 10
#define K_IMAGE_SIZE 30

@implementation XMFTabBarButton

- (CGRect)backgroundRectForBounds:(CGRect)bounds
{
    return CGRectMake((bounds.size.width - K_IMAGE_SIZE) / 2, (bounds.size.height - K_IMAGE_SIZE - K_TITLE_HEIGTH) / 2, K_IMAGE_SIZE, K_IMAGE_SIZE);
}

- (CGRect)titleRectForContentRect:(CGRect)contentRect
{
    return CGRectMake(0, (contentRect.size.height - K_IMAGE_SIZE - K_TITLE_HEIGTH) / 2 + K_IMAGE_SIZE, self.bounds.size.width, K_TITLE_HEIGTH);
}

- (CGRect)imageRectForContentRect:(CGRect)contentRect
{
    return CGRectMake((contentRect.size.width - K_IMAGE_SIZE) / 2, (contentRect.size.height - K_IMAGE_SIZE - K_TITLE_HEIGTH) / 2, K_IMAGE_SIZE, K_IMAGE_SIZE);
}

- (void)drawRect:(CGRect)rect
{
    self.titleLabel.textAlignment = NSTextAlignmentCenter;
}

@end
