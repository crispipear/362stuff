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
    UILabel *label = [[UILabel alloc] initWithFrame:frame2];
    label.font=[UIFont fontWithName:@"HelveticaNeue-Light" size:18];
    label.textColor = [UIColor whiteColor];
    label.text = self.message;
    [self addSubview:label];
    
}
@end
