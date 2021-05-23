//
//  PersonOfScrollView.m
//  May.10.HomeWorkFirst
//
//  Created by dllo on 16/5/10.
//  Copyright © 2016年 dllo. All rights reserved.
//

#import "PersonOfScrollView.h"


@implementation PersonOfScrollView

- (instancetype)addView:(UIView *)view {
    
    self.contentSize = CGSizeMake(CGRectGetWidth(self.bounds), 200 * 5);
    
    self.showsVerticalScrollIndicator = YES;
    
    
    [self addSubview:view];
    
    return self;
}

@end
