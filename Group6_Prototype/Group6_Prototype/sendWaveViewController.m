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
@property (weak, nonatomic) IBOutlet UITextField *waveTF;
@property (weak, nonatomic) IBOutlet UIButton *sendWaveButton;
@end
@implementation sendWaveViewController


- (IBAction)sendWave:(UIButton *)sender {
}
- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"%@", self.wavesArray);
}

-(void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([[segue identifier] isEqualToString:@"wavesSegue"]){
        wavesViewController *nextVC = segue.destinationViewController;
        if(self.waveTF.text && self.waveTF.text.length > 0){
            WaveView* wave = [[WaveView alloc] init];
            wave.message = self.waveTF.text;
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
