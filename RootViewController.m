//
//  RootViewController.m
//  Calculator_UI
//
//  Created by 1007 on 13-10-20.
//  Copyright (c) 2013年 Ibokan. All rights reserved.
//

#import "RootViewController.h"

#import "NormalViewController.h"
#import "ScienceViewController.h"


@interface RootViewController ()

@end

@implementation RootViewController

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
    UINavigationBar *navigationBar = [[UINavigationBar alloc] initWithFrame:CGRectMake(0, 0, 320, 40)];
    
    UINavigationItem *navigationItem = [[UINavigationItem alloc] initWithTitle:@"计算器"];
    
    leftButton = [[UIBarButtonItem alloc]
                  initWithTitle:@"返回"
                  style:UIBarButtonItemStyleDone
                  target:self
                  action:@selector(leftpage:)];
    
    
    rightButton = [[UIBarButtonItem alloc]
                   initWithTitle:@"计算器类型"
                   style:UIBarButtonItemStyleDone
                   target:self
                   action:@selector(leftpage:)];
    
    [navigationBar pushNavigationItem:navigationItem animated:YES];
    
    [navigationItem setLeftBarButtonItem:leftButton animated:YES];
    [navigationItem setRightBarButtonItem:rightButton animated:YES];
    
    [self.view addSubview:navigationBar];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)pageDown:(id)sender
{
    [UIView beginAnimations:@"Curl" context:nil];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
    [UIView setAnimationDuration:1.25];
    [UIView setAnimationTransition:UIViewAnimationTransitionCurlDown forView:self.view cache:YES];
    
    
    if (normalView.view.superview == nil)
    {
        if (normalView.view == nil) {
            NormalViewController *normalViewDemo = [[NormalViewController alloc] initWithNibName:@"NormalViewController" bundle:nil];
            normalView = normalViewDemo;
        }
        rightButton.title = [NSString stringWithFormat:@"普通计算器"];
        [scienceView.view removeFromSuperview];
        [self.view insertSubview:normalView.view atIndex:0];
    }
    else {
        if (scienceView.view == nil)
        {
            ScienceViewController *scienceViewDemo = [[ScienceViewController alloc] initWithNibName:@"ScienceViewController" bundle:nil];
            scienceView = scienceViewDemo;
        }
        rightButton.title = [NSString stringWithFormat:@"科学计算器"];
        [normalView.view removeFromSuperview];
        [self.view insertSubview:scienceView.view atIndex:0];
    }
    
    [UIView commitAnimations];}

-(void)leftpage:(id)sender
{
    [UIView beginAnimations:@"Curl" context:nil];
    //    平滑动画效果
    [UIView setAnimationCurve:UIViewAnimationCurveLinear];
    [UIView setAnimationDuration:1.25];
    [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:self.view cache:YES];
    
    if (normalView.view.superview == nil)
    {
        if (normalView.view == nil) {
            NormalViewController *normalViewDemo = [[NormalViewController alloc] initWithNibName:@"NormalViewController" bundle:nil];
            normalView = normalViewDemo;
        }
        rightButton.title = [NSString stringWithFormat:@"普通计算器"];
        [scienceView.view removeFromSuperview];
        [self.view insertSubview:normalView.view atIndex:0];
    }
    else {
        if (scienceView.view == nil)
        {
            ScienceViewController *scienceViewDemo = [[ScienceViewController alloc] initWithNibName:@"ScienceViewController" bundle:nil];
            scienceView = scienceViewDemo;
        }
        rightButton.title = [NSString stringWithFormat:@"科学计算器"];
        [normalView.view removeFromSuperview];
        [self.view insertSubview:scienceView.view atIndex:0];
    }
    
    [UIView commitAnimations];
}



@end
