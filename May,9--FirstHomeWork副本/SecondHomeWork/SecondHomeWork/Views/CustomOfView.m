//
//  CustomOfView.m
//  5月5日作业
//
//  Created by dllo on 16/5/5.
//  Copyright © 2016年 lanou3g. All rights reserved.
//

#import "CustomOfView.h"

@implementation CustomOfView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
- (void)dealloc{
    [_label release];
    [_textField release];
    [super dealloc];
    
    
    
}

+ (instancetype)customOfViewWithFrame:(CGRect)frame
                                title:(NSString *)title
                          placeHolder:(NSString *)placeHolder {
    CustomOfView *view = [[CustomOfView alloc] initWithFrame:frame];
    view.label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, view.frame.size.width / 3, view.frame.size.height)];
    [view addSubview:view.label];
    [view.label release];
    
    view.textField = [[UITextField alloc] initWithFrame:CGRectMake(view.frame.size.width / 3, 0, view.frame.size.width / 3 * 2, view.frame.size.height)];
    [view addSubview:view.textField];
    [view.textField release];
    [view conFigWithTitle:title placeHolder:placeHolder];
    
    return [view autorelease];
    
    
    
}

- (void)conFigWithTitle:(NSString *)title
            placeHolder:(NSString *)placeHolder {
    self.label.text = title;
    self.textField.placeholder = placeHolder;
    self.textField.borderStyle = UITextBorderStyleRoundedRect;
    
    
}





@end
