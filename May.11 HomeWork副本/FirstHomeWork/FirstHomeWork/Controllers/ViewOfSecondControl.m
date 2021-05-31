//
//  ViewOfSecondControl.m
//  FirstHomeWork
//
//  Created by dllo on 16/5/11.
//  Copyright © 2016年 dllo. All rights reserved.
//

#import "ViewOfSecondControl.h"
#import "ViewOfThirdControl.h"

@interface ViewOfSecondControl ()

@end

@implementation ViewOfSecondControl

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self secondInterface];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) secondInterface {
    
    UIView *viewOfSecond = [[UIView alloc] initWithFrame:self.view.frame];
    self.view.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:viewOfSecond];
    [viewOfSecond release];
    
    self.navigationItem.titleView = [[UISegmentedControl alloc] initWithItems:@[@"第2.1页", @"第2.2页"]];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"下一页" style:UIBarButtonItemStylePlain target:self action:@selector(handlee)];
    
    [self.navigationItem.titleView release];
    [self.navigationItem.rightBarButtonItem release];
    
    
    
}

- (void)handlee {
    
    ViewOfThirdControl *third = [[ViewOfThirdControl alloc] init];
    
    [self.navigationController pushViewController:third animated:YES];
    
    [third release];
    
    
    
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
