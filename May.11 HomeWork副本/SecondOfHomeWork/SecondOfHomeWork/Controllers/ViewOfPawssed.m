//
//  ViewOfPawssed.m
//  SecondOfHomeWork
//
//  Created by dllo on 16/5/11.
//  Copyright © 2016年 dllo. All rights reserved.
//

#import "ViewOfPawssed.h"
#import "ViewOfButton.h"

@interface ViewOfPawssed ()

@end

@implementation ViewOfPawssed

- (void)viewDidLoad {
    [super viewDidLoad];
    [self pawssedOfView];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)pawssedOfView {
    
    UIView *viewOfPawssed = [[UIView alloc] initWithFrame:self.view.frame];
    
    [self.view addSubview:viewOfPawssed];
    
    [viewOfPawssed release];
    viewOfPawssed.backgroundColor = [UIColor whiteColor];
    
    self.navigationItem.title = @"欢迎页";
    self.navigationItem.leftBarButtonItem.title = @"登录";
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(100, 150, 100, 80)];
    label.text = @"Welcome...";
    [self.view addSubview:label];
    [label release];
    
    ViewOfButton *buttonOfReturn = [ViewOfButton buttonWithType:UIButtonTypeSystem];
    buttonOfReturn.frame = CGRectMake(150, 220, 90, 80);
    [buttonOfReturn setTitle:@"返回" forState:UIControlStateNormal];
    [self.view addSubview:buttonOfReturn];
    
    [buttonOfReturn addTarget:self action:@selector(handleButton:) forControlEvents:UIControlEventTouchUpInside];
  
    
}

- (void)handleButton:(ViewOfButton *)button {
    
    
    [self.navigationController popViewControllerAnimated:YES];
    
    
    
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
