//
//  ViewController.m
//  ScrollViewWithButton
//
//  Created by 屌炸天 on 16/9/16.
//  Copyright © 2016年 yhb. All rights reserved.
//

#import "ViewController.h"
#import "MainScrollView.h"
#import "HBSignView.h"
#import "SecondViewController.h"
#define kScreenWidth [UIScreen mainScreen].bounds.size.width
@interface ViewController ()
@property (nonatomic,strong) MainScrollView *mainScrollView;
@property (nonatomic,strong) UIButton *childButton;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupUI];
    
}


- (void)setupUI{
    self.automaticallyAdjustsScrollViewInsets = NO;
    self.edgesForExtendedLayout = UIRectEdgeNone;
    self.mainScrollView = [[MainScrollView alloc] initWithFrame:self.view.bounds];
    self.mainScrollView.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:self.mainScrollView];
    
    self.mainScrollView.canCancelContentTouches = YES;
    self.mainScrollView.delaysContentTouches = NO;
//    self.mainScrollView.panGestureRecognizer.delaysTouchesBegan = YES;
    
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(50, 50, 100, 100)];
    button.backgroundColor = [UIColor greenColor];
    [button setTitle:@"Touch me " forState:UIControlStateNormal];
    [self.mainScrollView addSubview:button];
    [button addTarget:self action:@selector(boomSky) forControlEvents:UIControlEventTouchUpInside];
    
    HBSignView *signView = [[HBSignView alloc] initWithFrame:CGRectMake(0, 300, kScreenWidth, 300)];
    signView.backgroundColor = [UIColor whiteColor];
    [self.mainScrollView addSubview:signView];

   
    
    self.mainScrollView.contentSize = CGSizeMake(0, 764);
    
}


- (void)boomSky{
    SecondViewController *vc = [[SecondViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 50;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ID"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"ID"];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
     cell.textLabel.text = @"屌炸天";
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [self boomSky];
}


@end
