//
//  ViewController.m
//  StudyBlock
//
//  Created by Bondig on 2019/3/18.
//  Copyright © 2019 frank. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor yellowColor];
    [self setBtn];
}


- (void)setBtn{
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(100, 100, 100, 100);
    [btn setTitle:@"跳转" forState:UIControlStateNormal];
    btn.backgroundColor = [UIColor redColor];
    [btn addTarget:self action:@selector(Next) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)Next{
    
    //声明控制器
    SecondViewController *b = [[SecondViewController alloc] init];
    //避免循环引用
    __weak typeof(self) weakSelf = self;
    //调用block,让A界面得到B界面的block传回来的值,然后改变A界面的背景颜色
    b.block = ^(NSString * _Nonnull str1, UIColor * _Nonnull colcorC) {
        NSLog(@"%@",str1);
        weakSelf.view.backgroundColor = colcorC;
    };
    [self.navigationController pushViewController:b animated:YES];
    
}

@end
