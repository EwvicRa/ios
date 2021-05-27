//
//  PhotoOfScrollView.m
//  SecondHomeWork
//
//  Created by dllo on 16/5/10.
//  Copyright © 2016年 dllo. All rights reserved.
//

#import "PhotoOfScrollView.h"

@implementation PhotoOfScrollView


- (void)addPhoto:(NSArray *)photo {
    
    self.contentSize = CGSizeMake(CGRectGetWidth(self.bounds) * photo.count, CGRectGetHeight(self.bounds));
    
    for (int i = 0; i < photo.count; i++) {
        
        UIImageView *imageView = [[UIImageView alloc] initWithImage:photo[i]];
        
        imageView.frame = CGRectMake(CGRectGetWidth(self.bounds) * i, 0, CGRectGetWidth(self.bounds), CGRectGetHeight(self.bounds));
        
        [self addSubview:imageView];
        
        [imageView release];
        
    }
    
    
    
}


  

@end
