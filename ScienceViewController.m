//
//  ScienceViewController.m
//  Calculator_UI
//
//  Created by 1007 on 13-10-20.
//  Copyright (c) 2013年 Ibokan. All rights reserved.
//

#import "ScienceViewController.h"

@interface ScienceViewController ()

@end

@implementation ScienceViewController

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
    
    UITextView *numEquView = [[UITextView alloc] initWithFrame:CGRectMake(5, 50, 310, 80)];
    //numEquView.backgroundColor = [UIColor grayColor];
    [self.view addSubview:numEquView];
    
    //等式显示文本框
    equationView = [[UILabel alloc] initWithFrame:CGRectMake(5, 5, 300, 25)];
    equationView.backgroundColor = [UIColor grayColor];
    equationView.text = [NSString stringWithFormat:@"Equation View Test!"];
    equationView.textAlignment = NSTextAlignmentRight;
    equationView.lineBreakMode = 3;
    [numEquView addSubview:equationView];
    
    //输入的数显示文本框
    numView = [[UILabel alloc] initWithFrame:CGRectMake(5, 35, 300, 40)];
    numView.backgroundColor = [UIColor grayColor];
    numView.text = [NSString stringWithFormat:@"Num View Test!"];
    numView.textAlignment = NSTextAlignmentRight;
    [numEquView addSubview:numView];
    
    
    UITextView *textView = [[UITextView alloc] initWithFrame:CGRectMake(5, 130, 310, 330)];
    textView.backgroundColor = [UIColor whiteColor];
    textView.editable = NO;
    [self.view addSubview:textView];
    
    int x =5 , y = 5;
    int width = 55 , height = 50;
    int count = 0;
    NSArray *array = [NSArray arrayWithObjects:
                      @"!",@"^",@"squar",@"PI",@"c",
                      @"sin",@"(",@")",@"e",@"Del",
                      @"cos",@"7",@"8",@"9",@"/",
                      @"tan",@"4",@"5",@"6",@"*",
                      @"In",@"1",@"2",@"3",@"-",
                      @"Log",@"0",@".",@"=",@"+",
                      nil];
    
    for (int i = 0 ; i < 6; i ++) {
        for (int j = 0; j < 5; j++) {
            button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
            NSString *str = [[NSString alloc] init];
            str = [array objectAtIndex:count++];
            //[btnArray insertObject:str atIndex:i];
            [button setTitle:str forState:UIControlStateNormal];
            button.frame = CGRectMake(x , y , width, height);
            [button addTarget:self action:@selector(btnAction:) forControlEvents:UIControlEventTouchUpInside];
            [button setTag:count];
            [textView addSubview:button];
            x = x + width +5;
        }
        x = 10;
        y = y + height +5;
        
    }
    
}

- (void) btnAction:(UIButton *)sender
{
    UILabel *temp = [sender titleLabel];
    NSString *str = [NSString stringWithString:temp.text];
    equationView.text = [NSString stringWithString:str];
    numView.text = [NSString stringWithString:str];
    
}

@end
