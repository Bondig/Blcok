//
//  SecondViewController.m
//  StudyBlock
//
//  Created by Bondig on 2019/3/18.
//  Copyright © 2019 frank. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.block(@"返回蓝色", [UIColor blueColor]);
//    [self setBtn];
}

- (void)setBtn{

    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(100, 100, 100, 100);
    [btn setTitle:@"返回" forState:UIControlStateNormal];
    btn.backgroundColor = [UIColor redColor];
    [btn addTarget:self action:@selector(Back) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)Back{
    
    //调用block方法,返回对应的值,跟背景颜色,改变A页面的背景颜色
    self.block(@"返回蓝色", [UIColor blueColor]);
    //返回上一个界面
    [self.navigationController popViewControllerAnimated:YES];
    
}


@end
