//
//  ViewController.m
//  SCXTextFiledDemo
//
//  Created by 孙传兴 on 2017/11/18.
//  Copyright © 2017年 iosDev. All rights reserved.
//

#import "ViewController.h"
#import "SCXTextFiled.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    SCXTextFiled * tf = [[SCXTextFiled alloc]initWithFrame:CGRectMake(30, 100, 300, 50)];
    tf.placeholder = @"我是placeholder";
    tf.borderStyle = UITextBorderStyleRoundedRect;
    [self.view addSubview:tf];
    
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
