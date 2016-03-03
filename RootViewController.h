//
//  RootViewController.h
//  Calculator_UI
//
//  Created by 1007 on 13-10-20.
//  Copyright (c) 2013年 Ibokan. All rights reserved.
//

#import <UIKit/UIKit.h>
@class NormalViewController;
@class ScienceViewController;
@interface RootViewController : UIViewController
{
    
    NormalViewController *normalView;
    ScienceViewController *scienceView;
    
    UIBarButtonItem *leftButton;
    UIBarButtonItem *rightButton;
}



@end
