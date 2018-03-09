//
//  WaveView.m
//  group6_prototype
//
//  Created by Su Li on 2/27/18.
//  Copyright © 2018 Su Li. All rights reserved.
//

#import "WaveView.h"

@implementation WaveView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    UILabel* msg = [[UILabel alloc] initWithFrame:CGRectMake(25, 0, 350, 75)];
    UILabel* date = [[UILabel alloc] initWithFrame:CGRectMake(200, 62, 100, 75)];
    UIImageView* stressLevel = [[UIImageView alloc] initWithFrame:CGRectMake(25, 85, 25, 25)];
    msg.font=[UIFont fontWithName:@"HelveticaNeue-Light" size:17];
    msg.textColor = [UIColor whiteColor];
    msg.text = self.message;
    date.font=[UIFont fontWithName:@"HelveticaNeue-Light" size:13];
    date.textColor = [UIColor whiteColor];
    NSDateFormatter *df = [[NSDateFormatter alloc] init];
    [df setDateFormat:@"dd"];
    NSString* day = [df stringFromDate:self.date];
    [df setDateFormat:@"MMM"];
    NSString* mon = [df stringFromDate:self.date];
    [df setDateFormat:@"yy"];
    NSString* yr = [df stringFromDate:self.date];
    NSString* dateStr = [NSString stringWithFormat:@"%@ %@, 20%@", mon, day, yr];
    date.text = dateStr;
    if(self.stressLevel == 1){
        stressLevel.image = [UIImage imageNamed:@"wave1-1.png"];
    }else if(self.stressLevel == 2){
        stressLevel.image = [UIImage imageNamed:@"wave2-1.png"];
    }else if(self.stressLevel == 3){
        stressLevel.image = [UIImage imageNamed:@"wave3-1.png"];
    }else if(self.stressLevel == 4){
        stressLevel.image = [UIImage imageNamed:@"wave4-1.png"];
    }else if(self.stressLevel == 5){
        stressLevel.image = [UIImage imageNamed:@"wave5-1.png"];
    }
    ///
    [self addSubview:msg];
    [self addSubview:date];
    [self addSubview:stressLevel];

}
@end
