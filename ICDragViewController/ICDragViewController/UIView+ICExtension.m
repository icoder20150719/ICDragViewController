//
//  UIView+ICExtension.m
//  ICDragViewController
//
//  Created by andy  on 15/7/23.
//  Copyright (c) 2015年 andy . All rights reserved.
//

#import "UIView+ICExtension.h"

@implementation UIView (ICExtension)
- (void)setX_ic:(CGFloat)x_ic
{
    CGRect frame = self.frame;
    frame.origin.x = x_ic;
    self.frame = frame;
}

- (CGFloat)x_ic
{
    return self.frame.origin.x;
}

- (void)setY_ic:(CGFloat)y
{
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
}

- (CGFloat)y_ic
{
    return self.frame.origin.y;
}

- (void)setWidth_ic:(CGFloat)width
{
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}

- (CGFloat)width_ic
{
    return self.frame.size.width;
}

- (void)setHeight_ic:(CGFloat)height
{
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}

- (CGFloat)height_ic
{
    return self.frame.size.height;
}

- (void)setSize_ic:(CGSize)size
{
    CGRect frame = self.frame;
    frame.size = size;
    self.frame = frame;
}

- (CGSize)size_ic
{
    return self.frame.size;
}


@end
