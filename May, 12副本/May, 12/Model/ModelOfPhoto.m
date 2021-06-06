//
//  ModelOfPhoto.m
//  May, 12
//
//  Created by dllo on 16/5/12.
//  Copyright © 2016年 dllo. All rights reserved.
//

#import "ModelOfPhoto.h"

@interface ModelOfPhoto()

@property (nonatomic, retain) NSMutableArray *arr;

@end

@implementation ModelOfPhoto


- (instancetype)init {
    self = [super init];
    
    if (self) {
        self.arr = [NSMutableArray arrayWithCapacity:6];
    }
    
    return self;
}


+ (instancetype)sharedModelOfPic {
    
    static ModelOfPhoto *model = nil;
    if (model == nil ) {
        model = [[ModelOfPhoto alloc] init];
        
    }
    
    return model;
    
}



@end
