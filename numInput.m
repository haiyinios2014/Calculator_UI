//
//  numInput.m
//  Calculator_UI
//
//  Created by 1007 on 13-10-20.
//  Copyright (c) 2013年 Ibokan. All rights reserved.
//

#import "numInput.h"
#import "NormalViewController.h"
#import "ScienceViewController.h"

@implementation numInput
- (void)numInput:(UIButton *)sender
{
    //对各种全局参数对象进行初始化
    numStr = [[NSMutableString alloc] init];
    numStr1 = [[NSMutableString alloc] init];
    numStr2 = [[NSMutableString alloc] init];
    equationStr = [[NSMutableString alloc] init];
    opArray = [[NSMutableArray alloc] initWithObjects:@"+",@"-",@"*",@"/", nil];
    switchFalg = 0;
    flag = 0;
    numFlag = 0;
    opFlag = 0;
    pointFlag = -1;
    num1_pointFlag = 0;
    num2_pointFlag = 0;
    lastOpNum = 0;
    currentOpNum = 0;
    
    if (numFlag == 0 && opFlag == 0)//判断是否是刚开始输入第一个数
    {
        pointFlag = 0;
        UILabel *temp = sender.titleLabel;
        NSString *str = [NSString stringWithString:temp.text];
        
        //通过button的tag属性来取出每个数字
        //NSString *str = [NSString stringWithFormat:@"%@", sender.tag];
        
        [numStr1 appendString:str];
        if ([numStr1 length] == 2) {
            char ch1 = [numStr1 characterAtIndex:0];
            char ch2 = [numStr1 characterAtIndex:1];
            if (ch1 == '0') {
                if (ch2 >= 49 && ch2 <= 57) {
                    [numStr1 deleteCharactersInRange:NSMakeRange(0, 1)];
                    [equationStr deleteCharactersInRange:NSMakeRange(0, 1)];
                }
            }
        }
        
        
         normalView.numView.text = [NSString stringWithString:numStr1];
        
        [normalView.equationStr appendString:str];
        normalView.equationView.text = [NSString stringWithString:equationStr];
        
    }
    
    if (numFlag == 0 && opFlag == 1) {
        numStr = [[NSMutableString alloc] init];
        numStr1 = [[NSMutableString alloc] init];
        numStr2 = [[NSMutableString alloc] init];
        equationStr = [[NSMutableString alloc] init];
        flag = 0;
        numFlag = 0;
        opFlag = 0;
        pointFlag = -1;
        lastOpNum = 0;
        currentOpNum = 0;
        normalView.numView.text = nil;
        normalView.equationView.text = nil;
        pointFlag = 0;
        UILabel *temp = sender.titleLabel;
        NSString *str = [NSString stringWithString:temp.text];
        
        //通过button的tag属性来取出每个数字
        //NSString *str = [NSString stringWithFormat:@"%@", sender.tag];
        
        [numStr1 appendString:str];
        if ([numStr1 length] == 2) {
            char ch1 = [numStr1 characterAtIndex:0];
            char ch2 = [numStr1 characterAtIndex:1];
            if (ch1 == '0') {
                if (ch2 >= 49 && ch2 <= 57) {
                    [numStr1 deleteCharactersInRange:NSMakeRange(0, 1)];
                    [equationStr deleteCharactersInRange:NSMakeRange(0, 1)];
                }
            }
        }
        
        
        normalView.numView.text = [NSString stringWithString:numStr1];
        
        [equationStr appendString:str];
        normalView.equationView.text = [NSString stringWithString:equationStr];
        
    }
    
    if (numFlag == 1 && opFlag == 0)
    {
        pointFlag = 0;
        UILabel *temp = sender.titleLabel;
        NSString *str = [NSString stringWithString:temp.text];
        
        //通过button的tag属性来取出每个数字
        //NSString *str = [NSString stringWithFormat:@"%@", sender.tag];
        
        [numStr2 appendString:str];
        normalView.numView.text = [NSString stringWithString:numStr2];
        
        [equationStr appendString:str];
        normalView.equationView.text = [NSString stringWithString:equationStr];
    }
    
    if (numFlag == 1 && opFlag == 1)
    {
        pointFlag = 0;
        opFlag = 0;
        UILabel *temp = sender.titleLabel;
        NSString *str = [NSString stringWithString:temp.text];
        
        //通过button的tag属性来取出每个数字
        //NSString *str = [NSString stringWithFormat:@"%@", sender.tag];
        
        [numStr2 appendString:str];
        normalView.numView.text = [NSString stringWithString:numStr2];
        
        [equationStr appendString:str];
        normalView.equationView.text = [NSString stringWithString:equationStr];
        
        //[self sumFun:numStr1 opNum:sender.tag num2:numStr2];
    }
    
    
}

- (void)pointOperation:(UIButton *)sender
{
    while (pointFlag == 0)
    {
        pointFlag = 1;
        if (numFlag == 0 && opFlag == 0)//判断是否是刚开始输入第一个数
        {
            if(!num1_pointFlag ++)
            {
                UILabel *temp = sender.titleLabel;
                NSString *str = [NSString stringWithString:temp.text];
                
                //通过button的tag属性来取出每个数字
                //NSString *str = [NSString stringWithFormat:@"%@", sender.tag];
                
                [numStr1 appendString:str];
                normalView.numView.text = [NSString stringWithString:numStr1];
                
                [equationStr appendString:str];
                normalView.equationView.text = [NSString stringWithString:equationStr];
            }
        }
        
        if (numFlag == 1 && opFlag == 0)
        {
            if (!num2_pointFlag ++)
            {
                num2_pointFlag = 1;
                UILabel *temp = sender.titleLabel;
                NSString *str = [NSString stringWithString:temp.text];
                
                //通过button的tag属性来取出每个数字
                //NSString *str = [NSString stringWithFormat:@"%@", sender.tag];
                
                [numStr2 appendString:str];
                normalView.numView.text = [NSString stringWithString:numStr2];
                
                [equationStr appendString:str];
                normalView.equationView.text = [NSString stringWithString:equationStr];
            }
        }
        
        
        if (numFlag == 1 && opFlag == 1)
        {
            if(!num2_pointFlag++)
            {
                opFlag = 0;
                UILabel *temp = sender.titleLabel;
                NSString *str = [NSString stringWithString:temp.text];
                
                //通过button的tag属性来取出每个数字
                //NSString *str = [NSString stringWithFormat:@"%@", sender.tag];
                
                [numStr2 appendString:str];
                normalView.numView.text = [NSString stringWithString:numStr2];
                
                [equationStr appendString:str];
                normalView.equationView.text = [NSString stringWithString:equationStr];
            }
        }
    }
}



@end
