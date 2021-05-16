//
//  CustomOfView.h
//  5月5日作业
//
//  Created by dllo on 16/5/5.
//  Copyright © 2016年 lanou3g. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomOfView : UIView

@property (nonatomic, retain) UILabel *label;
@property (nonatomic, retain) UITextField *textField;

+ (instancetype)customOfViewWithFrame:(CGRect)frame
                                title:(NSString *)title
                          placeHolder:(NSString *)placeHolder;







@end
