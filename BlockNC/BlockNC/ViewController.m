//
//  ViewController.m
//  BlockNC
//
//  Created by 顾宏钟 on 2017/6/13.
//  Copyright © 2017年 hongzhong. All rights reserved.
//

#import "ViewController.h"
#import "NextViewController.h"

@interface ViewController ()

@property(nonatomic, strong) UIButton *nextBtn;
@property(nonatomic, strong) UILabel *nextPassedValue;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    // 添加按钮
    _nextBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    _nextBtn.frame = CGRectMake([UIScreen mainScreen].bounds.size.width * 0.5 - 120 * 0.5, [UIScreen mainScreen].bounds.size.height * 0.5 - 40 * 0.5, 120, 40);
    [self.view addSubview:_nextBtn];
    // 设置控件属性, 不重要
    _nextBtn.backgroundColor = [UIColor lightGrayColor];
    _nextBtn.layer.cornerRadius = 20;
    _nextBtn.layer.masksToBounds = true;
    [_nextBtn setTitle:@"进入下一界面" forState:UIControlStateNormal];
    _nextBtn.titleLabel.font = [UIFont systemFontOfSize:16];
    [_nextBtn addTarget:self action:@selector(nextCotrollerGo:) forControlEvents:UIControlEventTouchUpInside];
    
    // 添加UILabel
    _nextPassedValue = [[UILabel alloc] initWithFrame:CGRectMake([UIScreen mainScreen].bounds.size.width * 0.5 - 160 * 0.5, [UIScreen mainScreen].bounds.size.height * 0.5 - 40 * 0.5 - 100, 160, 40)];
    [self.view addSubview:_nextPassedValue];
    // 设置控件属性, 不重要
    _nextPassedValue.backgroundColor = [UIColor orangeColor];
    _nextPassedValue.layer.cornerRadius = 10;
    _nextPassedValue.layer.masksToBounds = true;
    _nextPassedValue.text = @"等待下一界面传值";
    _nextPassedValue.textAlignment = NSTextAlignmentCenter;
    _nextPassedValue.textColor = [UIColor whiteColor];
    _nextPassedValue.font = [UIFont systemFontOfSize:16];
}

- (void)nextCotrollerGo: (UIButton *)sender {
    
    NextViewController *nextVC = [[NextViewController alloc] init];
    nextVC.returnValueBlock = ^(NSString *passedValue){
        
        self.nextPassedValue.text = passedValue;
        
    };
    [self.navigationController pushViewController:nextVC animated:true];
}


@end
