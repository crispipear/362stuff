//
//  sendWaveViewController.m
//  group6_prototype
//
//  Created by Su Li on 2/27/18.
//  Copyright © 2018 Su Li. All rights reserved.
//

#import "sendWaveViewController.h"
#import "wavesViewController.h"
#import "WaveView.h"
#import "menuViewController.h"
@interface sendWaveViewController ()
//Apparently xcode is bugged out on outlet collection stuff..
@property (weak, nonatomic) IBOutlet UIImageView *waveIcon1;
@property (weak, nonatomic) IBOutlet UIImageView *waveIcon2;
@property (weak, nonatomic) IBOutlet UIImageView *waveIcon3;
@property (weak, nonatomic) IBOutlet UIImageView *waveIcon4;
@property (weak, nonatomic) IBOutlet UIImageView *waveIcon5;
//this is ugly but yeah..
@property (weak, nonatomic) IBOutlet UITextField *waveTF;
@property (nonatomic) int level;
@end
@implementation sendWaveViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"%@", self.wavesArray);
}

-(void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
}
- (IBAction)waveLevel1:(UIButton *)sender {
    [self setIconsAlpha];
    self.level = 1;
    self.waveIcon1.alpha = 1.0;
}
- (IBAction)wavelevel2:(UIButton *)sender {
    [self setIconsAlpha];
    self.level = 2;
    self.waveIcon2.alpha = 1.0;
}
- (IBAction)wavelevel3:(UIButton *)sender {
    [self setIconsAlpha];
    self.level = 3;
    self.waveIcon3.alpha = 1.0;
}
- (IBAction)wavelevel4:(UIButton *)sender {
    [self setIconsAlpha];
    self.level = 4;
    self.waveIcon4.alpha = 1.0;
}
- (IBAction)wavelevel5:(UIButton *)sender {
    [self setIconsAlpha];
    self.level = 5;
    self.waveIcon5.alpha = 1.0;
}

-(void)setIconsAlpha{
    self.waveIcon1.alpha = 0.5;
    self.waveIcon2.alpha = 0.5;
    self.waveIcon3.alpha = 0.5;
    self.waveIcon4.alpha = 0.5;
    self.waveIcon5.alpha = 0.5;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([[segue identifier] isEqualToString:@"wavesSegue"]){
        wavesViewController *nextVC = segue.destinationViewController;
        if(self.waveTF.text && self.waveTF.text.length > 0){
            WaveView* wave = [[WaveView alloc] init];
            wave.message = self.waveTF.text;
            wave.stressLevel = self.level;
            NSDate* date = [NSDate date];
            wave.date = date;
            [self.wavesArray addObject:wave];
        }else{
            NSLog(@"empty text field");
        }
        nextVC.wavesArray = self.wavesArray;
    }else if([[segue identifier] isEqualToString:@"menuSegue"]){
        menuViewController *nextVC = segue.destinationViewController;
        nextVC.wavesArray = self.wavesArray;
    }
}
@end
