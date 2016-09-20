//
//  HBSignView.h
//  VanKeYi
//
//  Created by apple on 16/9/2.
//  Copyright © 2016年 VanKeYi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HBSignView : UIView

//用于存放路径
@property(nonatomic,retain)NSMutableArray * points;
//画线的宽度 这里用IBInspectable来将该属性绑定到IB
@property(nonatomic,assign)IBInspectable CGFloat lineWidth;
//线的颜色
@property(nonatomic,strong)IBInspectable UIColor * color;
//判断是否有内容
@property (nonatomic, assign, getter=isDrawed) BOOL drawed;
//退回到上一步
- (void)back;
//擦除所有
- (void)clear;

@end
