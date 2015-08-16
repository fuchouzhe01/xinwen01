//
//  ViewController.m
//  xinwen01
//
//  Created by 罗凤翔 on 15/8/16.
//  Copyright (c) 2015年 lfx. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *btn;
@property (weak, nonatomic) UIView *coverView;
@property (weak, nonatomic) UIView *settingView;
@property (nonatomic, weak) UIButton *settingBtn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //我这里也要改
    self.view.backgroundColor = [UIColor whiteColor];
   
    [self.btn addTarget:self action:@selector(btnDidClick:) forControlEvents:UIControlEventTouchUpInside];

    
}
- (IBAction)btnDidClick:(id)sender {
    
    UIWindow *window = [UIApplication sharedApplication].keyWindow;
    UIView *coverView = [[UIView alloc]init];
    self.coverView = coverView;
    CGFloat W = window.frame.size.width * 0.5;
    CGFloat H = window.frame.size.height;
    CGFloat X = W;
    CGFloat Y = 0;
    self.coverView.frame = CGRectMake(X, Y, W,H);
    self.coverView.backgroundColor = [UIColor blackColor];
    self.coverView.alpha = 0.3;
    [window addSubview:self.coverView];
    
//    
//    UIImageView *img = [[UIImageView alloc]init];
//    img.center =  CGPointMake(self.view.center.x,self.view.center.y);
//    img.bounds = CGRectMake(0, 0, 100, 100);
//    
//    [window addSubview:img];
//    img.backgroundColor = [UIColor redColor];
    UIView *settingView = [[UIView alloc]init];
    [window addSubview:settingView];
    self.settingView = settingView;
    CGFloat x = 0;
    CGFloat y = 0;
    CGFloat w = window.frame.size.width * 0.5;
    CGFloat h = window.frame.size.height;
    self.settingView.frame = CGRectMake(x, y, w, h);
    
    UIButton * btn = [[UIButton alloc]init];
    self.settingBtn = btn;
    [settingView addSubview:btn];
    btn.backgroundColor = [UIColor purpleColor];
    CGFloat btnW = 50;
    CGFloat btnH = 50;
    CGFloat btnX = w * 0.5 - btnW * 0.5;
    CGFloat btnY = h * 0.5;
    btn.frame  = CGRectMake(btnX, btnY, btnW, btnH);
    [btn setTitle:@"设置" forState:UIControlStateNormal];
    
}



    //UIButton * btn = [[UIButton alloc]init];
    



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
    //dfgsdfgdfsgsdfgsdfgsdf
}

@end
