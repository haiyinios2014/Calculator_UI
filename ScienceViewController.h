//
//  ScienceViewController.h
//  Calculator_UI
//
//  Created by 1007 on 13-10-20.
//  Copyright (c) 2013年 Ibokan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ScienceViewController : UIViewController
{
    ScienceViewController *secondView;
    UILabel *equationView;
    UILabel *numView;
    UIButton *button;
}

- (void)btnAction:(UIButton *)sender;
@end
