//
//  ViewController.m
//  SecondHomeWork
//
//  Created by dllo on 16/5/9.
//  Copyright © 2016年 dllo. All rights reserved.
//

#import "ViewController.h"
#import "InterfaceOfSegment.h"
#import "InterfaceOfView.h"
#import "InterfaceOfTextView.h"
#import "InterfaceOfLabel.h"
#import "CustomOfView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self createSegmentedControl];
    [self UserOfInterface];
    [self PasswedOfInterface];
    [self RegisterOfInterface];
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)createSegmentedControl {
    
    CustomOfView *view1 = [[CustomOfView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 450)];
    
    [self.view addSubview:view1];
    [view1 release];
    
    InterfaceOfSegment *segmentOf = [[InterfaceOfSegment alloc] initWithItems:@[@"登录", @"注册", @"忘记密码"]];
    segmentOf.frame = CGRectMake(50, 500, 300, 50);
    [self.view addSubview:segmentOf];
    segmentOf.selectedSegmentIndex = 0;
    
    [segmentOf release];
    
    [segmentOf addTarget:self action:@selector(handleSegment:) forControlEvents:UIControlEventValueChanged];
    
    
}
- (void)handleSegment:(InterfaceOfSegment *)segment {
    if (segment.selectedSegmentIndex == 0) {
        [self.view bringSubviewToFront:[self.view viewWithTag:100]];
    } else if (segment.selectedSegmentIndex == 1) {
        [self.view bringSubviewToFront:[self.view viewWithTag:200]];
        
    } else if (segment.selectedSegmentIndex == 2) {
        [self.view bringSubviewToFront:[self.view viewWithTag:300]];
    }
    
    
    
}
- (void)UserOfInterface {
    
    InterfaceOfView *viewOfFirstView = [[InterfaceOfView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 450)];
    viewOfFirstView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:viewOfFirstView];
    viewOfFirstView.tag = 100;
    
    [viewOfFirstView release];
    // 用户名的控件
    CustomOfView *firstViewOfFirstCustom = [CustomOfView customOfViewWithFrame:CGRectMake(40, 150, self.view.frame.size.width - 80, 40) title:@"用户名:" placeHolder:@"请输入用户名"];
    [viewOfFirstView addSubview:firstViewOfFirstCustom];
    
    // 密码控件
    CustomOfView *firstViewOfSecondCustom = [CustomOfView customOfViewWithFrame:CGRectMake(40, 220, self.view.frame.size.width - 80, 40) title:@"密码:" placeHolder:@"请输入密码"];
    [viewOfFirstView addSubview:firstViewOfSecondCustom];
    

    
}

- (void)PasswedOfInterface {
    
    InterfaceOfView *viewOfSecondView = [[InterfaceOfView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 450)];
    viewOfSecondView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:viewOfSecondView];
    viewOfSecondView.tag = 200;
    
    [viewOfSecondView release];
    
    // 用户名的控件
    CustomOfView *secondViewOfFirstCustom = [CustomOfView customOfViewWithFrame:CGRectMake(40,250, self.view.frame.size.width - 80, 40) title:@"电子邮箱:" placeHolder:@"请输入电子邮箱"];
    [viewOfSecondView addSubview:secondViewOfFirstCustom];

    
    
}

- (void)RegisterOfInterface {
    
    InterfaceOfView *viewOfThirstView = [[InterfaceOfView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 450)];
    viewOfThirstView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:viewOfThirstView];
    viewOfThirstView.tag = 300;
    
    [viewOfThirstView release];
    // 用户名的控件
    CustomOfView *thirstViewOfFirstCustom = [CustomOfView customOfViewWithFrame:CGRectMake(40, 100, self.view.frame.size.width - 80, 40) title:@"用户名:" placeHolder:@"请输入用户名"];
    [viewOfThirstView addSubview:thirstViewOfFirstCustom];
    
    // 密码控件
    CustomOfView *thirstViewOfSecondCustom = [CustomOfView customOfViewWithFrame:CGRectMake(40, 170, self.view.frame.size.width - 80, 40) title:@"密码:" placeHolder:@"请输入密码"];
    [viewOfThirstView addSubview:thirstViewOfSecondCustom];
    
    // 确认密码控件
    CustomOfView *thirstViewOfThirstCustom = [CustomOfView customOfViewWithFrame:CGRectMake(40, 240, self.view.frame.size.width - 80, 40) title:@"确认密码:" placeHolder:@"请输入密码"];
    [viewOfThirstView addSubview:thirstViewOfThirstCustom];
    
    // 手机号控件
    CustomOfView *thirstViewOfFoursCustom = [CustomOfView customOfViewWithFrame:CGRectMake(40, 310, self.view.frame.size.width - 80, 40) title:@"手机号:" placeHolder:@"请输入手机号码"];
    [viewOfThirstView addSubview:thirstViewOfFoursCustom];
    
    // 邮箱控件
    CustomOfView *thirstViewOfFifthCustom = [CustomOfView customOfViewWithFrame:CGRectMake(40, 380, self.view.frame.size.width - 80, 40) title:@"邮箱:" placeHolder:@"请输入邮箱"];
    [viewOfThirstView addSubview:thirstViewOfFifthCustom];
    

    
    
    
}


@end
