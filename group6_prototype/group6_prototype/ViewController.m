//
//  ViewController.m
//  group6_prototype
//
//  Created by Su Li on 2/12/18.
//  Copyright © 2018 Su Li. All rights reserved.
//

#import "ViewController.h"
#import "WaveView.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *enter;
@property (strong, nonatomic) IBOutletCollection(UIImageView) NSArray *circles;
@property (nonatomic) int tracker;
@end

@implementation ViewController


- (IBAction)clicked:(UIButton *)sender {
    self.tracker++;
    if(self.tracker<5){
        for(int i=0; i<self.tracker; i++){
            UIImageView *current = self.circles[i];
            current.alpha = 1.0;
        }
    }

    if(self.tracker==4){
        self.enter.hidden = NO;
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tracker = 0;
    self.enter.hidden = YES;
    // Do any additional setup after loading the view, typically from a nib.
}


@end
