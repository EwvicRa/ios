//
//  ViewController.m
//  May,9--FirstHomeWork
//
//  Created by dllo on 16/5/9.
//  Copyright © 2016年 dllo. All rights reserved.
//

#import "ViewController.h"
#import "ColourOfSlider.h"
#import "ColourOfLabel.h"
#import "AlphaOfSlider.h"
#import "ColourValueOfLabel.h"


@interface ViewController ()




@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self BuleOfSlider];
    [self RedOfSlider];
    [self GreenOfSlider];
    [self AlphaOfSlider];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)BuleOfSlider {
    
    // 蓝色滑动控件
    
    ColourOfSlider *sliderOfBule = [[ColourOfSlider alloc] initWithFrame:CGRectMake(100, 100, 200, 100)];
    [self.view addSubview:sliderOfBule];
    sliderOfBule.minimumTrackTintColor = [UIColor blueColor];
    [sliderOfBule release];
    sliderOfBule.minimumValue = 0.0;
    sliderOfBule.maximumValue = 255.0;
    
    [sliderOfBule addTarget:self action:@selector(handleSlider:) forControlEvents:UIControlEventValueChanged];
    sliderOfBule.tag = 200;
    
    
    
    // 蓝色title
    
    ColourOfLabel *buleOfLabel = [[ColourOfLabel alloc] initWithFrame:CGRectMake(50, 100, 80, 100)];
    buleOfLabel.text = @"蓝色";
    
    [self.view addSubview:buleOfLabel];
    [buleOfLabel release];
    
    
    
    // 滑动控件后的数值
     ColourValueOfLabel *buleOfValue = [[ColourValueOfLabel alloc] initWithFrame:CGRectMake(320, 100, 80, 100)];
    
    buleOfValue.text = @"0";
    [self.view addSubview:buleOfValue];
    [buleOfValue release];
    buleOfValue.tag = 250;
    
   
}


- (void)RedOfSlider {
    // 红色文本title
    
    ColourOfLabel *labelOfRed = [[ColourOfLabel alloc] initWithFrame:CGRectMake(50, 150, 80, 100)];
    labelOfRed.text = @"红色";
    [self.view addSubview:labelOfRed];
    [labelOfRed release];
    
    // 红色滑动控件
    ColourOfSlider *sliderOfRed = [[ColourOfSlider alloc] initWithFrame:CGRectMake(100, 150, 200, 100)];
    
    [self.view addSubview:sliderOfRed];
    sliderOfRed.minimumTrackTintColor = [UIColor redColor];
    [sliderOfRed release];
    sliderOfRed.minimumValue = 0.0;
    sliderOfRed.maximumValue = 255.0;
    sliderOfRed.tag = 300;
    
    
    [sliderOfRed addTarget:self action:@selector(handleSlider:) forControlEvents:UIControlEventValueChanged];
    
    
    
    // 滑动控件后的数值
    ColourValueOfLabel *redOfValue = [[ColourValueOfLabel alloc] initWithFrame:CGRectMake(320, 150, 80, 100)];
    redOfValue.text = @"0";
    [self.view addSubview:redOfValue];
    [redOfValue release];
    redOfValue.tag = 350;
    
    
   
}

- (void)GreenOfSlider {
    // 绿色文本
    
    ColourOfLabel *labelOfGreen = [[ColourOfLabel alloc] initWithFrame:CGRectMake(50, 200, 80, 100)];
    labelOfGreen.text = @"绿色";
    [self.view addSubview:labelOfGreen];
    [labelOfGreen release];
    
    // 绿色滑动控件
    
    ColourOfSlider *sliderOfGreen = [[ColourOfSlider alloc] initWithFrame:CGRectMake(100, 200, 200, 100)];
    sliderOfGreen.minimumTrackTintColor = [UIColor greenColor];
    [self.view addSubview:sliderOfGreen];
    [sliderOfGreen release];
    
    sliderOfGreen.minimumValue = 0.0;
    sliderOfGreen.maximumValue = 255.0;
    sliderOfGreen.tag = 100;
    
    
    [sliderOfGreen addTarget:self action:@selector(handleSlider:) forControlEvents:UIControlEventValueChanged];
    
    
    // 滑动控件的值
    
    ColourValueOfLabel *greenOfValue = [[ColourValueOfLabel alloc] initWithFrame:CGRectMake(320, 200, 80, 100)];
    
    greenOfValue.text = @"0";
    [self.view addSubview:greenOfValue];
    [greenOfValue release];
    greenOfValue.tag = 150;
    
    
    
    
}
- (void)AlphaOfSlider {
    
    // 滑动控件
    AlphaOfSlider *sliderOfAlpha = [[AlphaOfSlider alloc] initWithFrame:CGRectMake(100, 250, 200, 100)];
    sliderOfAlpha.minimumTrackTintColor = [UIColor yellowColor];
    sliderOfAlpha.maximumTrackTintColor = [UIColor blackColor];
    [self.view addSubview:sliderOfAlpha];
    
    sliderOfAlpha.minimumValue = 1.0;
    sliderOfAlpha.maximumValue = 100.0;
    sliderOfAlpha.tag = 400;
    
    [sliderOfAlpha addTarget:self action:@selector(handleSlider:) forControlEvents:UIControlEventValueChanged];
    
    [sliderOfAlpha release];
    
    // 文本title
    ColourOfLabel *labelOfAlpha = [[ColourOfLabel alloc] initWithFrame:CGRectMake(50, 250, 80, 100)];
    labelOfAlpha.text = @"透明度";
    [self.view addSubview:labelOfAlpha];
    [labelOfAlpha release];
    
    // 滑动控件的值
    
    ColourValueOfLabel *alphaOfValue = [[ColourValueOfLabel alloc] initWithFrame:CGRectMake(320,250, 80, 100)];
    
    alphaOfValue.text = @"0";
    [self.view addSubview:alphaOfValue];
    alphaOfValue.tag = 450;
    
    
    [alphaOfValue release];
   
    
}



- (void)handleSlider:(ColourOfSlider *)slider {
   
    ColourOfSlider *blue = [self.view viewWithTag:200];
    ColourOfSlider *red = [self.view viewWithTag:300];
    ColourOfSlider *green = [self.view viewWithTag:100];
    AlphaOfSlider *alpha = [self.view viewWithTag:400];
    
    
    
    
    
    if (slider.tag == 100) {
        NSString *str1 = [NSString stringWithFormat:@"%0.2f",slider.value];
        ColourValueOfLabel *greenValue = [self.view viewWithTag:150];
        greenValue.text = str1;
        
    } else if (slider.tag == 200) {
        NSString *str2 = [NSString stringWithFormat:@"%0.2f", slider.value];
        ColourValueOfLabel *buleValue = [self.view viewWithTag:250];
        buleValue.text = str2;
        
    } else if (slider.tag == 300) {
        
        NSString *str3 = [NSString stringWithFormat:@"%0.2f", slider.value];
        ColourValueOfLabel *redValue = [self.view viewWithTag:350];
        redValue.text = str3;
        
    } else if (slider.tag == 400) {
        
        NSString *str4 = [NSString stringWithFormat:@"%0.2f", slider.value];
        ColourOfLabel *alphaValue = [self.view viewWithTag:450];
        alphaValue.text =str4;
        
        
    }
    
    float buleOfFloat = blue.value / 255.0f;
    float RedOfFloat = red.value / 255.0f;
    float greeOfFloat = green.value /255.0f;
    float alphaOfFloat = alpha.value / 100.0f;
    
    self.view.alpha = alphaOfFloat;
    
    self.view.backgroundColor = [UIColor colorWithRed:RedOfFloat green:greeOfFloat blue:buleOfFloat alpha:self.view.alpha];
    

    
   
}




@end
