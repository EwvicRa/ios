//
//  ViewController.m
//  May.10.HomeWorkFirst
//
//  Created by dllo on 16/5/10.
//  Copyright © 2016年 dllo. All rights reserved.
//

#import "ViewController.h"
#import "ListOfPerson.h"
#import "PersonOfScrollView.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self list];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)list{
    
    PersonOfScrollView * scrollview = [[PersonOfScrollView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:scrollview];
    
    
    [scrollview release];
    
    
    ListOfPerson *listOfOne = [ListOfPerson listOfPersonWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 200) titleOfName:@"张三" titleOfNumber:@"1321311" peronImageName:@"aa.jpg"];
    
    [scrollview addView:listOfOne];
    
    ListOfPerson *listOfTwo = [ListOfPerson listOfPersonWithFrame:CGRectMake(0, 200, self.view.frame.size.width, 200) titleOfName:@"李四" titleOfNumber:@"121212" peronImageName:@"aa.jpg"];
    [scrollview addView:listOfTwo];
    
    
    
    ListOfPerson *listOfthree = [ListOfPerson listOfPersonWithFrame:CGRectMake(0, 400, self.view.frame.size.width, 200) titleOfName:@"钱二" titleOfNumber:@"121212" peronImageName:@"aa.jpg"];
    [scrollview addView:listOfthree];
    
    
    ListOfPerson *listOfFour = [ListOfPerson listOfPersonWithFrame:CGRectMake(0, 600, self.view.frame.size.width, 200) titleOfName:@"孙五" titleOfNumber:@"121212" peronImageName:@"aa.jpg"];
    [scrollview addView:listOfFour];
    
    
    ListOfPerson *listOfFive = [ListOfPerson listOfPersonWithFrame:CGRectMake(0, 800, self.view.frame.size.width, 200) titleOfName:@"刘七" titleOfNumber:@"121212" peronImageName:@"aa.jpg"];
    [scrollview addView:listOfFive];
    
    
    
    }

@end
