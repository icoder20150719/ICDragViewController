//
//  ICDragViewController.m
//  ICDragViewController
//
//  Created by andy  on 15/7/23.
//  Copyright (c) 2015年 andy . All rights reserved.
//

#import "ICDragViewController.h"
#import "UIView+ICExtension.h"

@interface ICDragViewController ()

@property (strong, nonatomic)  UIScrollView *bgscrollView;
@property (strong, nonatomic)  UIImageView *headerImageView;
@property (strong, nonatomic)  UIView *customeView;


@end

@implementation ICDragViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    //创建背景
    self.bgscrollView = [[UIScrollView alloc]init];
    [self.view addSubview:self.bgscrollView];
    //创建图片
    self.headerImageView = [[UIImageView alloc]init];
    self.headerImageView.image = [UIImage imageNamed:@"login_bg"];
    self.headerImageView.contentMode = UIViewContentModeScaleAspectFill;
    //自定义View
    self.customeView = [[UITableView alloc]init];
    
    
    //添加View -- >注意顺序
    [self.view addSubview:self.headerImageView];
    [self.view addSubview:self.bgscrollView];
    [self.bgscrollView addSubview:self.customeView];
    
}
-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    //设置frame
    self.bgscrollView.frame = self.view.bounds;
    self.customeView.backgroundColor = [UIColor whiteColor];
    self.bgscrollView.contentSize = CGSizeMake(0,self.bgscrollView.height_ic + 1);
    self.headerImageView.frame = CGRectMake(0, 0, self.view.width_ic, 400);
    self.customeView.y_ic = 180;
    self.customeView.height_ic = self.view.height_ic - 180;
    self.customeView.width_ic = self.view.width_ic;
    //添加KVO观察者
    [self.bgscrollView addObserver:self forKeyPath:@"contentOffset" options: NSKeyValueObservingOptionNew context:nil];
    
}

-(void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    //移除KVO观察
    [self.bgscrollView removeObserver:self forKeyPath:@"contentOffset"];

}
#pragma mark - KVO监听
-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    CGPoint point = [change[@"new"] CGPointValue];
    //时刻设置图片的高度
    self.headerImageView.height_ic = 400 - point.y ;
    
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
