//
//  ViewController.m
//  group6_prototype
//
//  Created by Su Li on 2/12/18.
//  Copyright © 2018 Su Li. All rights reserved.
//

#import "ViewController.h"
#import "homeViewController.h"
#import "WaveView.h"
@interface ViewController ()

@property (strong, nonatomic) IBOutletCollection(UIImageView) NSArray *circles;
@property (nonatomic) int tracker;

@property (strong, nonatomic) NSMutableArray *waveViews;

@end

@implementation ViewController


- (IBAction)clicked:(UIButton *)sender {
    self.tracker++;
    if(self.tracker<5){
        for(int i=0; i<self.tracker; i++){
            UIImageView *current = self.circles[i];
            current.alpha = 0.75;
        }
    }

    if(self.tracker==4){
        [self performSegueWithIdentifier:@"homeSegue" sender:self];
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.wavesArray = [[NSMutableArray alloc] init];
    self.tracker = 0;
    //generate fake wave messages
    WaveView* wave1 = [[WaveView alloc] init];
    wave1.message = @"Too much homework today!";
    wave1.stressLevel = 2;
    wave1.date = [NSDate date];
    WaveView* wave2 = [[WaveView alloc] init];
    wave2.message = @"I have failed my friends";
    wave2.stressLevel = 3;
    wave2.date = [NSDate date];
    [self.wavesArray addObject:wave1];
    [self.wavesArray addObject:wave2];

    // Do any additional setup after loading the view, typically from a nib.
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    homeViewController *waves = segue.destinationViewController;
    waves.wavesArray = self.wavesArray;
}

@end
