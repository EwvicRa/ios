//
//  ViewOfRegister.m
//  SecondOfHomeWork
//
//  Created by dllo on 16/5/11.
//  Copyright © 2016年 dllo. All rights reserved.
//

#import "ViewOfRegister.h"
#import "ViewOfTextField.h"
#import "ViewOfButton.h"

@interface ViewOfRegister ()

@end

@implementation ViewOfRegister

- (void)viewDidLoad {
    [super viewDidLoad];
   
    [self registerOfInterface];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)registerOfInterface {
    
    UIView *viewOfRegister = [[UIView alloc] initWithFrame:self.view.frame];
    viewOfRegister.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:viewOfRegister];
    
    [viewOfRegister release];
    
    self.navigationItem.title = @"注册";
    self.navigationItem.leftBarButtonItem.title = @"Cancel";
    
    ViewOfTextField *textFieldOfUser = [[ViewOfTextField alloc] initWithFrame:CGRectMake(50, 100, 200, 80)];
    [self.view addSubview:textFieldOfUser];
    [textFieldOfUser release];
    textFieldOfUser.placeholder = @"请输入用户名";
    
    ViewOfTextField *textFieldOfPawssed = [[ViewOfTextField alloc] initWithFrame:CGRectMake(50, 220, 200, 80)];
    [self.view addSubview:textFieldOfPawssed];
    textFieldOfPawssed.placeholder = @"请输入密码";
    [textFieldOfPawssed release];
    
    ViewOfTextField *textFieldOfPawssedAgain = [[ViewOfTextField alloc] initWithFrame:CGRectMake(50, 340, 200, 80)];
    [self.view addSubview:textFieldOfPawssedAgain];
    textFieldOfPawssedAgain.placeholder = @"请确认密码";
    [textFieldOfPawssedAgain release];
    
    ViewOfButton *buttonOfReturn1 = [ViewOfButton buttonWithType:UIButtonTypeSystem];
    buttonOfReturn1.frame = CGRectMake(150, 400, 90, 80);
    [buttonOfReturn1 setTitle:@"返回" forState:UIControlStateNormal];
    [buttonOfReturn1 addTarget:self action:@selector(handd) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:buttonOfReturn1];
    [buttonOfReturn1 release];
    
    
    
    
}

- (void)handd {
    
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
