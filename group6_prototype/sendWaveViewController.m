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
@property (strong, nonatomic) NSString *wave;
@end

@implementation sendWaveViewController
@synthesize waveTF;

- (IBAction)sendWave:(UIButton *)sender {
    self.wave = [self.waveTF text];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.waveTF.delegate = self;
    // Do any additional setup after loading the view.
}
-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [self.waveTF resignFirstResponder];
    return true;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    wavesViewController *waves = segue.destinationViewController;
    NSLog(@"local: %@",  self.wave);
    waves.wave = self.wave;
    NSLog(@"foreign: %@",  waves.wave);
}
@end
