//
//  ViewController.m
//  FirstHomeWork
//
//  Created by dllo on 16/5/11.
//  Copyright © 2016年 dllo. All rights reserved.
//

#import "ViewController.h"
#import "ViewOfSecondControl.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self firstInterface];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)firstInterface {
    
    UIView *viewOfFirst = [[UIView alloc] initWithFrame:self.view.frame];
    [self.view addSubview:viewOfFirst];
    viewOfFirst.backgroundColor = [UIColor redColor];
    [viewOfFirst release];
    
    self.navigationItem.title = @"第一页";
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:nil];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemSearch target:self action:@selector(handle)];
    
    [self.navigationItem.leftBarButtonItem release];
    [self.navigationItem.rightBarButtonItem release];
    
  
}

- (void)handle {
    
    ViewOfSecondControl *second = [[ViewOfSecondControl alloc] init];
    
    [self.navigationController pushViewController:second animated:YES];
    
    [second release];
    
    
}


@end
