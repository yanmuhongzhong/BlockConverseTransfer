//
//  NextViewController.h
//  BlockNC
//
//  Created by 顾宏钟 on 2017/6/13.
//  Copyright © 2017年 hongzhong. All rights reserved.
//  传值方

#import <UIKit/UIKit.h>

/**
 *  类型自定义
 */
typedef void(^ReturnValueBlock)(NSString *strValue);

@interface NextViewController : UIViewController

/**
 *  声明一个ReturnValueBlock属性，这个Block是获取传值的界面传进来的
 */
@property(nonatomic, copy) ReturnValueBlock returnValueBlock;

@property(nonatomic, strong) UIButton *backBtn;
@property(nonatomic, strong) UITextField *inputText;

@end
