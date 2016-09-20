//
//  MainScrollView.m
//  ScrollViewWithButton
//
//  Created by 屌炸天 on 16/9/16.
//  Copyright © 2016年 yhb. All rights reserved.
//

#import "MainScrollView.h"
#import "HBSignView.h"  //自定义的view，实现画板功能
@implementation MainScrollView
//
-(BOOL)touchesShouldCancelInContentView:(UIView *)view{
    if ([view isKindOfClass:[UIButton class]]) {

        return YES;
    }
    return [super touchesShouldCancelInContentView:view];
}

- (BOOL)touchesShouldBegin:(NSSet *)touches withEvent:(UIEvent *)event inContentView:(UIView *)view
{
    
    if ([view isKindOfClass:[HBSignView class]]||[view isKindOfClass:[UIButton class]]) {
        return YES;
    }
    return NO;
    
}

@end
