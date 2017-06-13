//
//  NextViewController.m
//  BlockNC
//
//  Created by 顾宏钟 on 2017/6/13.
//  Copyright © 2017年 hongzhong. All rights reserved.
//

#import "NextViewController.h"
#import "ViewController.h"

@interface NextViewController ()

@end

@implementation NextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    // 添加按钮
    _backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    _backBtn.frame = CGRectMake([UIScreen mainScreen].bounds.size.width * 0.5 - 260 * 0.5, [UIScreen mainScreen].bounds.size.height * 0.5 - 40 * 0.5, 260, 40);
    [self.view addSubview:_backBtn];
    // 设置控件属性, 不重要
    _backBtn.backgroundColor = [UIColor darkGrayColor];
    _backBtn.layer.cornerRadius = 20;
    _backBtn.layer.masksToBounds = true;
    [_backBtn setTitle:@"拿到值并把值传回上一界面显示" forState:UIControlStateNormal];
    _backBtn.titleLabel.font = [UIFont systemFontOfSize:16];
    _backBtn.titleLabel.textColor = [UIColor redColor];
    [_backBtn addTarget:self action:@selector(topControllerBack:) forControlEvents:UIControlEventTouchUpInside];
    
    // 添加UITextField
    _inputText = [[UITextField alloc] initWithFrame:CGRectMake([UIScreen mainScreen].bounds.size.width * 0.5 - 160 * 0.5, [UIScreen mainScreen].bounds.size.height * 0.5 - 40 * 0.5 - 100, 160, 40)];
    [self.view addSubview:_inputText];
    // 设置控件属性, 不重要
    _inputText.backgroundColor = [UIColor blueColor];
    _inputText.layer.cornerRadius = 10;
    _inputText.layer.masksToBounds = true;
    _inputText.textAlignment = NSTextAlignmentCenter;
    _inputText.textColor = [UIColor whiteColor];
    _inputText.font = [UIFont systemFontOfSize:16];
    
}

- (void)topControllerBack: (UIButton *)sender {
    
    NSString *inputString = self.inputText.text;
    if (self.returnValueBlock) {
        //将自己的值传出去，完成传值
        self.returnValueBlock(inputString);
    }
    [self.navigationController popViewControllerAnimated:true];
}

// 点击回退键盘
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    // 法一
//    [self.view endEditing:YES]; //实现该方法是需要注意view需要是继承UIControl而来的
    // 法二
    [[[UIApplication sharedApplication] keyWindow] endEditing:YES];
}

@end
