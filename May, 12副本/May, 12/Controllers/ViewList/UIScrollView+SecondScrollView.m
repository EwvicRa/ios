//
//  UIScrollView+SecondScrollView.m
//  May, 12
//
//  Created by dllo on 16/5/12.
//  Copyright © 2016年 dllo. All rights reserved.
//

#import "UIScrollView+SecondScrollView.h"

@implementation UIScrollView (SecondScrollView)

- (void)addPhoto:(NSArray *)photo {
    
    self.contentSize = CGSizeMake(CGRectGetWidth(self.bounds) * photo.count, CGRectGetHeight(self.bounds));
    
    for (int i = 0; i  < photo.count ; i++) {
        UIImageView *view = [[UIImageView alloc] initWithImage:photo[i]];
        view.frame = CGRectMake(CGRectGetWidth(self.bounds) * i,0 ,CGRectGetWidth(self.bounds) , CGRectGetHeight(self.bounds));
        
        [self addSubview:view];
        
        [view release];
        
    }
    self.showsHorizontalScrollIndicator = NO;
    self.pagingEnabled = YES;
    
    self.minimumZoomScale = 0.5;
    
    self.maximumZoomScale = 2;
    
    
    
    
}




@end
