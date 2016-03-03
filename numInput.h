//
//  numInput.h
//  Calculator_UI
//
//  Created by 1007 on 13-10-20.
//  Copyright (c) 2013年 Ibokan. All rights reserved.
//

#import <Foundation/Foundation.h>
@class NormalViewController;
@class ScienceViewController;
@interface numInput : NSObject
{
    NormalViewController *normalView;
    ScienceViewController *scienceView;
    
    NSMutableString *numStr;
    NSMutableString *numStr1;
    NSMutableString *numStr2;
    NSMutableString *equationStr;
    NSMutableString *allEquation;
    UIButton *numBtn;
    UIButton *opBtn;
    NSMutableArray *btnArray;
    NSMutableArray *opArray;
    
    
    int lastOpNum;
    int currentOpNum;
    
    char chOperator;
    int switchFalg;
    int flag;
    int numFlag;
    int opFlag;
    int pointFlag;
    int num1_pointFlag;
    int num2_pointFlag;
    int num;
}


@end
