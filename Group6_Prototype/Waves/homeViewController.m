//
//  homeViewController.m
//  group6_prototype
//
//  Created by Su Li on 3/6/18.
//  Copyright © 2018 Su Li. All rights reserved.
//

#import "homeViewController.h"
#import "wavesViewController.h"
#import "historyViewController.h"
#import "menuViewController.h"
#import "sendWaveViewController.h"
@interface homeViewController ()

@end

@implementation homeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
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
    }else if([[segue identifier] isEqualToString:@"menuSegue"]){
        menuViewController *nextVC = segue.destinationViewController;
        nextVC.wavesArray = self.wavesArray;
    }else if([[segue identifier] isEqualToString:@"historySegue"]){
        historyViewController *nextVC = segue.destinationViewController;
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
