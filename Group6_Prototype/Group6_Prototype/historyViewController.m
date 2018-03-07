//
//  historyViewController.m
//  group6_prototype
//
//  Created by Su Li on 3/6/18.
//  Copyright © 2018 Su Li. All rights reserved.
//

#import "historyViewController.h"
#import "menuViewController.h"
@interface historyViewController ()

@end

@implementation historyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    menuViewController *nextVC = segue.destinationViewController;
    nextVC.wavesArray = self.wavesArray;
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
