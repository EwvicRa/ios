//
//  PhotoOfViewController.m
//  May, 12
//
//  Created by dllo on 16/5/12.
//  Copyright © 2016年 dllo. All rights reserved.
//

#import "PhotoOfViewController.h"

#import "ModelOfPhoto.h"
#import "UIScrollView+SecondScrollView.h"

@interface PhotoOfViewController ()




@end

@implementation PhotoOfViewController
- (void)dealloc {
    
    [_secondOfScroll release];
    [super dealloc];
    
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self secondOfInterface];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)secondOfInterface {
    
    UIView *viewOfSecond = [[UIView alloc] initWithFrame:self.view.frame];
    
    [self.view addSubview:viewOfSecond];
    
    [viewOfSecond release];
    
    ModelOfPhoto *model = [ModelOfPhoto sharedModelOfPic];
    NSMutableArray *array = [model valueForKey:@"arr"];
    
    self.secondOfScroll = [[UIScrollView alloc] initWithFrame:self.view.frame];
    
    [self.view addSubview:self.secondOfScroll];
    [self.secondOfScroll release];
    
    [self.secondOfScroll addPhoto:array];
    
    
    
    
    
    
    
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
