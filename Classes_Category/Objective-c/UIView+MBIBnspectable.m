//
//  UIView+MBIBnspectable.m
//
//  Created by 张磊 on 15/4/29.
//  Copyright (c) 2015年 All rights reserved.
//

#import "UIView+MBIBnspectable.h"

@implementation UIView (MBIBnspectable)

- (void)setCornerRadius:(NSInteger)cornerRadius{
    self.layer.cornerRadius = cornerRadius;
    self.layer.masksToBounds = cornerRadius > 0;
}

- (NSInteger)cornerRadius{
    return self.layer.cornerRadius;
}

- (void)setBorderWidth:(NSInteger)borderWidth{
    self.layer.borderWidth = borderWidth;
}

- (NSInteger)borderWidth{
    return self.layer.borderWidth;
}

- (void)setBorderColor:(UIColor *)borderColor{
    self.layer.borderColor = borderColor.CGColor;
}

- (UIColor *)borderColor{
    return [UIColor colorWithCGColor:self.layer.borderColor];
}

- (void)setOnePx:(BOOL)onePx{
    if (onePx) {
        CGRect rect = self.frame;
        rect.size.height = 1.0 / [UIScreen mainScreen].scale;
        self.frame = rect;
    }
}

- (BOOL)onePx{
    return self.onePx;
}

@end
