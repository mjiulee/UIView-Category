//
//  UIView+MBIBnspectable.h
//
//  Created by 张磊 on 15/4/29.
//  Copyright (c) 2015年 All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (MBIBnspectable)

@property (assign,nonatomic) IBInspectable NSInteger cornerRadius;
@property (assign,nonatomic) IBInspectable NSInteger borderWidth;
@property (strong,nonatomic) IBInspectable UIColor  *borderColor;
@property (assign,nonatomic) IBInspectable NSString *hexRgbColor;
@property (assign,nonatomic) IBInspectable BOOL      onePx;


@end
