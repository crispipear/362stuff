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
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.waveTF.delegate = self;
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
    NSLog(@"Sender: %@",self.wave);

    wavesViewController *waves = segue.destinationViewController;
    waves.wave = self.wave;
}
@end
