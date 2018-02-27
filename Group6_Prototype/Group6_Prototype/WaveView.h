//
//  WaveView.h
//  group6_prototype
//
//  Created by Su Li on 2/27/18.
//  Copyright © 2018 Su Li. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WaveView : UIView

@property (strong, nonatomic) NSString *message;
@property (nonatomic) int stressLevel;
@property (strong, nonatomic) NSDate *time;

@end
