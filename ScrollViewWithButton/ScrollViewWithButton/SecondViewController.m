//
//  SecondViewController.m
//  ScrollViewWithButton
//
//  Created by 屌炸天 on 16/9/16.
//  Copyright © 2016年 yhb. All rights reserved.
//

#import "SecondViewController.h"

@implementation SecondViewController

-(void)viewDidLoad{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UIImageView *imageV = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"boomsky.jpg"]];
    
//    imageV.frame = CGRectMake(0, 0, 500, 500);
    imageV.frame = self.view.bounds;
    [self.view addSubview:imageV];
}

@end
