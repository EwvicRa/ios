//
//  ViewOfThirdControl.m
//  FirstHomeWork
//
//  Created by dllo on 16/5/11.
//  Copyright © 2016年 dllo. All rights reserved.
//

#import "ViewOfThirdControl.h"

@interface ViewOfThirdControl ()

@end

@implementation ViewOfThirdControl

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self thirdInterface];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) thirdInterface {
    
    UIView *viewOfThird = [[UIView alloc] initWithFrame:self.view.frame];
    viewOfThird.backgroundColor = [UIColor blueColor];
    
    [self.view addSubview:viewOfThird];
    [viewOfThird release];

    
    UIBarButtonItem *one = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCamera target:self action:nil];
    
    UIBarButtonItem *two = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemReply target:self action:nil];
    
    
    
    self.navigationItem.rightBarButtonItems = @[one, two];
    
    [one release];
    [two release];
    
    
    
    
    
    
    
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
