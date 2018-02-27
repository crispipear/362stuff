//
//  sendWaveViewController.m
//  group6_prototype
//
//  Created by Su Li on 2/27/18.
//  Copyright © 2018 Su Li. All rights reserved.
//

#import "sendWaveViewController.h"
#import "wavesViewController.h"
@interface sendWaveViewController ()
@property (weak, nonatomic) IBOutlet UITextField *waveTF;
@property (weak, nonatomic) IBOutlet UIButton *sendWaveButton;
@property (strong, nonatomic) NSString *wave;
@end

@implementation sendWaveViewController
@synthesize waveTF;

- (IBAction)sendWave:(UIButton *)sender {
//    dispatch_async(dispatch_get_main_queue(), ^{
//        self.sendWaveButton.hidden = NO;
//    });
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.waveTF.delegate = self;
//    self.sendWaveButton.hidden = YES;
    // Do any additional setup after loading the view.
}

-(void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [self.waveTF resignFirstResponder];
    return true;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    self.wave = self.waveTF.text;
    wavesViewController *waves = segue.destinationViewController;
//    NSLog(@"segue local: %@",  self.wave);
    waves.wave = self.wave;
//    NSLog(@"segue foreign: %@",  waves.wave);
}
@end
