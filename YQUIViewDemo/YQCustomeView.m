//
//  YQCustomeView.m
//  YQUIViewDemo
//
//  Created by yaoqi on 17/4/5.
//  Copyright © 2017年 yaoqi. All rights reserved.
//

#import "YQCustomeView.h"

@implementation YQCustomeView


- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        NSLog(@"初始化");
    }
    return self;
}


-(void)didAddSubview:(UIView *)subview {
    NSLog(@"didAddSubview");
}

// 布局的时候调用的走完layoutSubviews方法的是后调用的
//- (void)drawRect:(CGRect)rect {
//    NSLog(@"drawRect");
//}
- (void)drawRect:(CGRect)rect {
    CGContextRef context =  UIGraphicsGetCurrentContext();
    CGRect myFrame = self.bounds;
    CGContextSetLineWidth(context, 10);
    [[UIColor yellowColor] set];
    UIRectFrame(myFrame);
}

//走完初始化方法的时候调用的
- (void)layoutSubviews {
    NSLog(@"layoutSubviews");
}

@end
