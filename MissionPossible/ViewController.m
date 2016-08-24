//
//  ViewController.m
//  MissionPossible
//
//  Created by Rodney Sampson on 8/24/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UIButton * counterButton;

- (IBAction)setCounterButtonText:(UIButton *)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.counterButton setTitle:[NSString stringWithFormat:@"%@", @(0)] forState:UIControlStateNormal];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)setCounterButtonText:(UIButton *)sender {
    NSString * counterString = self.counterButton.titleLabel.text;
    NSInteger newCounterValue = [counterString integerValue];
    counterString = [NSString stringWithFormat:@"%@", @(++newCounterValue)];
    [self.counterButton setTitle:counterString forState:UIControlStateNormal];
}

@end
