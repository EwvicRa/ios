//
//  ListOfPerson.m
//  May.10.HomeWorkFirst
//
//  Created by dllo on 16/5/10.
//  Copyright © 2016年 dllo. All rights reserved.
//

#import "ListOfPerson.h"


@interface ListOfPerson ()

@property (nonatomic, retain) UIImageView *personOfImage;
@property (nonatomic, retain) UILabel * personOfLabelName;
@property (nonatomic, retain) UILabel * personOfLabelNumber;
@property (nonatomic, retain) UIView * personOfLandMark;



@end



@implementation ListOfPerson

- (void)dealloc {
    [_personOfImage release];
    [_personOfLabelName release];
    [_personOfLabelNumber release];
    [_personOfLandMark release];
    
    
    [super dealloc];
    
    
}


+ (instancetype)listOfPersonWithFrame:(CGRect)frame
                          titleOfName:(NSString *)titleOfName
                        titleOfNumber:(NSString *)titleOfNumber
                       peronImageName:(NSString *)personImageName {
    
    ListOfPerson *list = [[ListOfPerson alloc] initWithFrame:frame];
    // 姓名文本
    list.personOfLabelName = [[UILabel alloc] initWithFrame:CGRectMake(list.frame.size.width / 3 * 2 , 10, list.frame.size.width / 3 , 80)];
    list.personOfLabelName.text = titleOfName;
    
    [list addSubview:list.personOfLabelName];
    [list.personOfLabelName release];
    
    // 电话号码文本
    list.personOfLabelNumber = [[UILabel alloc] initWithFrame:CGRectMake(list.frame.size.width / 3 * 2 , 80, list.frame.size.width / 3 * 2, 80)];
    list.personOfLabelNumber.text = titleOfNumber;
    
    [list addSubview:list.personOfLabelNumber];
    [list.personOfLabelNumber release];
    
    
    // 联系人头像
    UIImage *imageOfPerson = [UIImage imageNamed:personImageName];
    list.personOfImage = [[UIImageView alloc] initWithImage:imageOfPerson];
    list.personOfImage.frame = CGRectMake(20, 20, list.frame.size.width / 3, 150);
    [list addSubview:list.personOfImage];
    [list.personOfImage release];
    
    list.personOfLandMark = [[UIView alloc] initWithFrame:CGRectMake(0, list.frame.size.height - 1, list.frame.size.width, 1)];
    [list addSubview:list.personOfLandMark];
    list.personOfLandMark.backgroundColor = [UIColor blackColor];
    
    [list.personOfLandMark release];
    
    
    
    return [list autorelease];
    
    
}


@end
