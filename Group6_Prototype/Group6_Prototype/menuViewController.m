//
//  menuViewController.m
//  group6_prototype
//
//  Created by Su Li on 3/6/18.
//  Copyright © 2018 Su Li. All rights reserved.
//

#import "menuViewController.h"
#import "wavesViewController.h"
#import "homeViewController.h"
#import "sendWaveViewController.h"
#import "relaxViewController.h"
@interface menuViewController ()

@end

@implementation menuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"%@", self.wavesArray);

    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([[segue identifier] isEqualToString:@"wavesSegue"]){
        wavesViewController *nextVC = segue.destinationViewController;
        nextVC.wavesArray = self.wavesArray;
    }else if([[segue identifier] isEqualToString:@"sendWaveSegue"]){
        sendWaveViewController *nextVC = segue.destinationViewController;
        nextVC.wavesArray = self.wavesArray;
    }else if([[segue identifier] isEqualToString:@"homeSegue"]){
        homeViewController *nextVC = segue.destinationViewController;
        nextVC.wavesArray = self.wavesArray;
    }else if([[segue identifier] isEqualToString:@"relaxSegue"]){
        relaxViewController *nextVC = segue.destinationViewController;
        nextVC.wavesArray = self.wavesArray;
    }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
