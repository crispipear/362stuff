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
    CGRect frame2 = CGRectMake(25, 0, 350, 75);
    UILabel *testLabel = [[UILabel alloc] initWithFrame:frame2];
    testLabel.font=[UIFont boldSystemFontOfSize:15.0];
    testLabel.textColor = [UIColor whiteColor];
    testLabel.text = self.message;
    [self addSubview:testLabel];}


@end
