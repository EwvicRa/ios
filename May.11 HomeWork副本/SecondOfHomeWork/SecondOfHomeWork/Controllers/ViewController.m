//
//  ViewController.m
//  SecondOfHomeWork
//
//  Created by dllo on 16/5/11.
//  Copyright © 2016年 dllo. All rights reserved.
//

#import "ViewController.h"
#import "ViewOfButton.h"
#import "ViewOfTextField.h"
#import "ViewOfPawssed.h"
#import "ViewOfRegister.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self UserOfInterface];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)UserOfInterface {
    
    UIView *viewOfUser = [[UIView alloc]initWithFrame:self.view.frame];
    viewOfUser.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:viewOfUser];
    [viewOfUser release];
    
    
    self.navigationItem.title = @"登录";
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(hhaadd)];
    [self.navigationItem.rightBarButtonItem release];
    
    
    ViewOfTextField *textFieldOfUser = [[ViewOfTextField alloc] initWithFrame:CGRectMake(60, 100, 200, 80)];
    [self.view addSubview:textFieldOfUser];
    textFieldOfUser.placeholder = @"请输入用户名";
    [textFieldOfUser release];
    
    
    ViewOfTextField *textFieldOfPawssed = [[ViewOfTextField alloc] initWithFrame:CGRectMake(60, 200, 200, 80)];
    textFieldOfPawssed.placeholder = @"请输入密码";
    [self.view addSubview:textFieldOfPawssed];
    [textFieldOfPawssed release];
    
    
    ViewOfButton *buttonOfUser = [ViewOfButton buttonWithType:UIButtonTypeSystem];
    buttonOfUser.frame = CGRectMake(150, 320, 90, 80);
    [buttonOfUser setTitle:@"登录" forState:UIControlStateNormal];
    [self.view addSubview:buttonOfUser];
  
    [buttonOfUser release];
    
    [buttonOfUser addTarget:self action:@selector(handlePawssed:) forControlEvents:UIControlEventTouchUpInside];
    
    
    
}
- (void)hhaadd {
    
    ViewOfRegister *third = [[ViewOfRegister alloc] init];
    [self.navigationController pushViewController:third animated:YES];
    [third release];
    
    
}

- (void)handlePawssed:(ViewOfButton *)button {
    
    ViewOfPawssed *pawssed = [[ViewOfPawssed alloc] init];
    
    [self.navigationController pushViewController:pawssed animated:YES];
    [pawssed release];
    
    
    
    
}




@end
