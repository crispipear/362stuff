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
    // Drawing code
    NSLog(@"drawRect");
    CGRect frame = CGRectMake(0, 0, 100, 100);
    UILabel *testLabel = [[UILabel alloc] initWithFrame:frame];
    testLabel.text = @"test";
}


@end
