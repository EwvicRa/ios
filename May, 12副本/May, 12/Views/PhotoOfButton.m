//
//  PhotoOfButton.m
//  May, 12
//
//  Created by dllo on 16/5/12.
//  Copyright © 2016年 dllo. All rights reserved.
//

#import "PhotoOfButton.h"

@implementation PhotoOfButton

+ (instancetype)photoButtonWithFrame:(CGRect)frame
                               image:(UIImage *)image{
    
    
    PhotoOfButton *button = [PhotoOfButton buttonWithType:UIButtonTypeSystem];
    button.frame = frame;
   
    [button setBackgroundImage:image forState:UIControlStateNormal];
    
    return button;
    
    
    
    
}

@end
