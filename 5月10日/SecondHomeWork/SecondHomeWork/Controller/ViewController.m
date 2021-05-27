//
//  ViewController.m
//  SecondHomeWork
//
//  Created by dllo on 16/5/10.
//  Copyright © 2016年 dllo. All rights reserved.
//

#import "ViewController.h"
#import "PhotoOfScrollView.h"
#import "PhotoOfPageControl.h"

@interface ViewController ()<UIScrollViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self photo];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)photo {
    
    UIImage *imageOfThirst = [UIImage imageNamed:@"dd.jpg"];
    UIImage *imageOfSecond = [UIImage imageNamed:@"aa.jpg"];
    UIImage *imageOfThird = [UIImage imageNamed:@"bb.jpg"];
    UIImage *imageOfFourth = [UIImage imageNamed:@"cc.jpg"];
    UIImage *imageOfSixth = [UIImage imageNamed:@"dd.jpg"];
    UIImage *imageOfSeventh = [UIImage imageNamed:@"aa.jpg"];
    
    
    PhotoOfScrollView *scrollOfPhoto = [[PhotoOfScrollView alloc] initWithFrame:CGRectMake(0, 50, self.view.frame.size.width, 400)];
    
    [self.view addSubview:scrollOfPhoto];
    
    [scrollOfPhoto release];
    
    [scrollOfPhoto addPhoto:@[imageOfThirst, imageOfSecond, imageOfThird, imageOfFourth, imageOfSixth, imageOfSeventh]];
    scrollOfPhoto.contentOffset = CGPointMake(self.view.frame.size.width, 0);
    
    scrollOfPhoto.pagingEnabled = YES;
    scrollOfPhoto.showsHorizontalScrollIndicator = NO;
    
    
    scrollOfPhoto.delegate = self;
    
    PhotoOfPageControl *page = [[PhotoOfPageControl alloc] initWithFrame:CGRectMake(0, 400 - 10, 100, 50)];
    [scrollOfPhoto addSubview:page];
    [page release];
    
    
    page.numberOfPages = 4;
    
    
    
   
    
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView {
    
    if (scrollView.contentOffset.x == 0) {
        scrollView.contentOffset = CGPointMake(self.view.frame.size.width * 4, 0);
    } else if (scrollView.contentOffset.x == self.view.frame.size.width * 5) {
        
        scrollView.contentOffset = CGPointMake(self.view.frame.size.width , 0);
        
        
        
    }
       
    
    
}








@end
