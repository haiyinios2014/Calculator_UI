//
//  NormalViewController.h
//  Calculator_UI
//
//  Created by 1007 on 13-10-20.
//  Copyright (c) 2013年 Ibokan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NormalViewController : UIViewController
{
    UILabel *numView;
    UILabel *equationView;
    UITextView *textView;
    UIView *calvulatorView1;
    UIView *calvulatorView2;
    NSMutableString *numStr;
    NSMutableString *numStr1;
    NSMutableString *numStr2;
    NSMutableString *equationStr;
    NSMutableString *allEquation;
    UIButton *numBtn;
    UIButton *opBtn;
    NSMutableArray *btnArray;
    NSMutableArray *opArray;
    
    
//    int lastOpNum;
//    int currentOpNum;
//    
//    char chOperator;
//    int switchFalg;
//    int flag;
//    int numFlag;
//    int opFlag;
//    int pointFlag;
//    int num1_pointFlag;
//    int num2_pointFlag;
    int num;
}

@property (strong, nonatomic) UILabel *numView, *equationView;
@property (strong, nonatomic) UITextView *textView;
@property (strong, nonatomic) NSMutableArray *btnArray, *opArray;
@property (strong, nonatomic) NSMutableString *numStr, *numStr1, *numStr2, *equationStr;


@end
