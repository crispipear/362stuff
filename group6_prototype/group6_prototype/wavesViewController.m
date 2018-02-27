//
//  wavesViewController.m
//  group6_prototype
//
//  Created by Su Li on 2/27/18.
//  Copyright © 2018 Su Li. All rights reserved.
//

#import "wavesViewController.h"

@interface wavesViewController ()
@property (weak, nonatomic) IBOutlet UILabel *waveView;
@end

@implementation wavesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.waveView.text = self.wave;
    NSLog(@"Reciever: %@",self.wave);
    
}

-(void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
}


@end
