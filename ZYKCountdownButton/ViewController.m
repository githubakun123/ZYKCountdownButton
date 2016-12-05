//
//  ViewController.m
//  ZYKCountdownButton
//
//  Created by apple on 2016/12/5.
//  Copyright © 2016年 ym. All rights reserved.
//

#import "ViewController.h"
#import "ZYKCountdownButton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    ZYKCountdownButton *button = [[ZYKCountdownButton alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
    [self.view addSubview:button];
    button.backgroundColor = [UIColor grayColor];
    [button addTarget:self action:@selector(sendMsg) forControlEvents:UIControlEventTouchUpInside];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)sendMsg {
    NSLog(@"发送验证码");
}
@end
