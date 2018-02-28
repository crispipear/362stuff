//
//  wavesViewController.m
//  group6_prototype
//
//  Created by Su Li on 2/27/18.
//  Copyright © 2018 Su Li. All rights reserved.
//

#import "wavesViewController.h"
#import "WaveView.h"
@interface wavesViewController ()
@property (unsafe_unretained, nonatomic) IBOutlet UIScrollView *wavesSV;
@end

@implementation wavesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"Reciever: %@",self.wave);
    
    [self loadViews];
    
}
- (void)loadViews
{
    CGRect frame = CGRectMake(0, 0, 200, 200);
    WaveView *testView = [[WaveView alloc] initWithFrame:frame];
    [self.wavesSV addSubview:testView];
}
-(void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
}


@end
