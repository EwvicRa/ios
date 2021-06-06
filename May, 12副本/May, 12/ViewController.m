//
//  ViewController.m
//  May, 12
//
//  Created by dllo on 16/5/12.
//  Copyright © 2016年 dllo. All rights reserved.
//

#import "ViewController.h"

#import "PhotoOfButton.h"
#import "ModelOfPhoto.h"
#import "PhotoOfViewController.h"



@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self firstOfInterface];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)firstOfInterface {
    
    UIView *viewOfFirst = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    viewOfFirst.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:viewOfFirst];
    
    
      [viewOfFirst release];
    
    self.navigationItem.title = @"相册";
    
    ModelOfPhoto *model = [ModelOfPhoto sharedModelOfPic];
    NSMutableArray *modelArray = [model valueForKey:@"arr"];
    
    
    for (int i = 0; i < 6; i++) {
        UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:@"0%d.jpg", i]];
        [modelArray addObject:image];
        
        
    }
    
    int count = 0;
    for (int i = 0; i < 2; i++) {
        for (int j = 0; j < 3; j++) {
            PhotoOfButton *button = [PhotoOfButton photoButtonWithFrame:CGRectMake(50 + 100 * j, 200 + i * 200, 80, 80) image:modelArray[count]];
            count++;
            
            button.tag = 100 + i * 10 + j;
            
            [viewOfFirst addSubview:button];
            
            [button addTarget:self action:@selector(handleButton:) forControlEvents:UIControlEventTouchUpInside];
            
            
          
        }
    }
   
    
}

- (void)handleButton:(PhotoOfButton *)button {
    
    PhotoOfViewController *second = [[PhotoOfViewController alloc] init];
    
    [self.navigationController pushViewController:second animated:YES];

    if (button.tag == 100) {
        
        
        second.secondOfScroll.contentSize = CGSizeMake(0, 0);
        
    } else if (button.tag == 101) {
        
        
       
        second.secondOfScroll.contentSize = CGSizeMake(second.secondOfScroll.frame.size.width, 0);
        
    } else if (button.tag == 102) {
        
       
        
        second.secondOfScroll.contentSize = CGSizeMake(second.secondOfScroll.frame.size.width * 2, 0);
    } else if (button.tag == 110) {
        
        
        
        second.secondOfScroll.contentSize = CGSizeMake(second.secondOfScroll.frame.size.width * 3, 0);
        
    } else if (button.tag == 111) {
        
       
        second.secondOfScroll.contentSize = CGSizeMake(second.secondOfScroll.frame.size.width * 4, 0);
    } else if (button.tag == 112) {
        
        
        
        second.secondOfScroll.contentSize = CGSizeMake(second.secondOfScroll.frame.size.width * 5, 0);
    }
    
    
    [second release];
    
    
    
    
    
}





@end
