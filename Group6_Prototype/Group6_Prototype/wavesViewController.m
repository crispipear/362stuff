//
//  wavesViewController.m
//  group6_prototype
//
//  Created by Su Li on 2/27/18.
//  Copyright © 2018 Su Li. All rights reserved.
//

#import "wavesViewController.h"
#import "WaveView.h"
#import "menuViewController.h"
@interface wavesViewController ()
@property (unsafe_unretained, nonatomic) IBOutlet UIScrollView *wavesSV;
@end

@implementation wavesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self loadViews];
    NSLog(@"%@", self.wavesArray);
    [self.wavesSV setShowsVerticalScrollIndicator:NO];
}
- (void)loadViews
{
    CGFloat posY = 0;
    
    for (WaveView *waveObj in [_wavesArray reverseObjectEnumerator]) {
        
        CGRect frame = CGRectMake(0, posY, 300, 75);
        WaveView *wave = [[WaveView alloc] initWithFrame:frame];
        wave.message = waveObj.message;
        wave.backgroundColor = [UIColor clearColor];
        wave.layer.borderWidth = 1;
        wave.layer.cornerRadius = 15;
        wave.layer.borderColor = [UIColor whiteColor].CGColor;
        [self.wavesSV addSubview:wave];
        posY += 100;
        
    }
    
    float contentHeight = posY + 75;
    self.wavesSV.contentSize = CGSizeMake(self.wavesSV.frame.size.width, contentHeight);

    
}
-(void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
        menuViewController *nextVC = segue.destinationViewController;
        nextVC.wavesArray = self.wavesArray;
}
@end
