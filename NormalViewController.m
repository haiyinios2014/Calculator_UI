//
//  NormalViewController.m
//  Calculator_UI
//
//  Created by 1007 on 13-10-20.
//  Copyright (c) 2013年 Ibokan. All rights reserved.
//

#import "NormalViewController.h"
#import "numInput.h"
#import "opInput.h"

@interface NormalViewController ()

@end

@implementation NormalViewController

@synthesize numView = _numView, equationView = _equationView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)loadView
{
    self.view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 480)];
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"bg.png"]];
    imageView.frame = self.view.bounds;
    imageView.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    [self.view insertSubview:imageView atIndex:0];
    
    textView = [[UITextView alloc] initWithFrame:CGRectMake(5, 50, 310, 80)];
    textView.backgroundColor = [UIColor whiteColor];
    textView.editable = NO;
    [self.view addSubview:textView];
    
    calvulatorView1 = [[UIView alloc] initWithFrame:CGRectMake(5, 130, 310, 330)];
    calvulatorView1.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:calvulatorView1];
    
    //等式显示文本框
    equationView = [[UILabel alloc] initWithFrame:CGRectMake(5, 5, 300, 25)];
    equationView.backgroundColor = [UIColor grayColor];
    equationView.text = [NSString stringWithFormat:@"Equation View Test!"];
    equationView.textAlignment = NSTextAlignmentRight;
    equationView.lineBreakMode = 3;
    [textView addSubview:equationView];
    
    //输入的数显示文本框
    numView = [[UILabel alloc] initWithFrame:CGRectMake(5, 35, 300, 40)];
    numView.backgroundColor = [UIColor grayColor];
    numView.text = [NSString stringWithFormat:@"Num View Test!"];
    numView.textAlignment = NSTextAlignmentRight;
    [textView addSubview:numView];
    
    //按钮的初始坐标
    float x = 5, y = 70;
    float width = 70, height = 60;
    num = 1;
    
//    //对各种全局参数对象进行初始化
//    numStr = [[NSMutableString alloc] init];
//    numStr1 = [[NSMutableString alloc] init];
//    numStr2 = [[NSMutableString alloc] init];
//    equationStr = [[NSMutableString alloc] init];
//    opArray = [[NSMutableArray alloc] initWithObjects:@"+",@"-",@"*",@"/", nil];
//    switchFalg = 0;
//    flag = 0;
//    numFlag = 0;
//    opFlag = 0;
//    pointFlag = -1;
//    num1_pointFlag = 0;
//    num2_pointFlag = 0;
//    lastOpNum = 0;
//    currentOpNum = 0;
    
    for (int i = 0; i<10; i++)
    {
        numBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        
        //将button设置成黑色
        //        numBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //        numBtn.backgroundColor = [UIColor blackColor];
        
        NSString *str = [NSString stringWithFormat:@"%d", (num++%10)];
        [btnArray insertObject:str atIndex:i];
        [numBtn setTitle:str forState:UIControlStateNormal];
        numBtn.frame = CGRectMake(x , y , width, height);
        
        [numBtn addTarget:self action:@selector(numInput:) forControlEvents:UIControlEventTouchUpInside];
        [numBtn setTag:(i+1)%10];
        [calvulatorView1 addSubview:numBtn];
        if (x == 155)
        {
            y = y + height + 5;
            x = 5;
        }
        else
        {
            x = x + width + 5;
        }
    }
    
    UIButton *cleanBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [cleanBtn setTitle:@"clean" forState:UIControlStateNormal];
    cleanBtn.frame = CGRectMake(5, 5, 145, 60);
    [cleanBtn addTarget:self action:@selector(cleanOperation:) forControlEvents:UIControlEventTouchUpInside];
    [calvulatorView1 addSubview:cleanBtn];
    
    UIButton *backBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [backBtn setTitle:@"del" forState:UIControlStateNormal];
    backBtn.frame = CGRectMake(155, 5, 145, 60);
    [backBtn addTarget:self action:@selector(backOperation:) forControlEvents:UIControlEventTouchUpInside];
    [calvulatorView1 addSubview:backBtn];
    
    UIButton *equalBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [equalBtn setTitle:@"=" forState:UIControlStateNormal];
    equalBtn.frame = CGRectMake(160, y, 70, 60);
    [equalBtn addTarget:self action:@selector(equalOperation:) forControlEvents:UIControlEventTouchUpInside];
    [calvulatorView1 addSubview:equalBtn];
    
    UIButton *pointBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [pointBtn setTitle:@"." forState:UIControlStateNormal];
    pointBtn.frame = CGRectMake(85, y, 70, 60);
    [pointBtn addTarget:self action:@selector(pointOperation:) forControlEvents:UIControlEventTouchUpInside];
    [calvulatorView1 addSubview:pointBtn];
    
    for (int i = 0; i < 4; i++) {
        opBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        NSString *str = [[NSString alloc] init];
        str = [opArray objectAtIndex:i];
        //[btnArray insertObject:str atIndex:i];
        [opBtn setTitle:str forState:UIControlStateNormal];
        opBtn.frame = CGRectMake(230 , y - 195 , width, height);
        [opBtn addTarget:self action:@selector(opInput:) forControlEvents:UIControlEventTouchUpInside];
        [opBtn setTag:(i+1)%10];
        [calvulatorView1 addSubview:opBtn];
        y += 65;
        
    }
    
    
}


@end
