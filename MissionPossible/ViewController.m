//
//  ViewController.m
//  MissionPossible
//
//  Created by Rodney Sampson on 8/24/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UIButton * leftCounterButton;
@property (strong, nonatomic) IBOutlet UIButton * rightCounterButton;

- (IBAction)setLeftCounterButtonText:(UIButton *)sender;

- (IBAction)setRightCounterButtonText:(UIButton *)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.leftCounterButton setTitle:[NSString stringWithFormat:@"%@", @(0)] forState:UIControlStateNormal];
    [self.rightCounterButton setTitle:[NSString stringWithFormat:@"%@", @(0)] forState:UIControlStateNormal];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


- (IBAction)setLeftCounterButtonText:(UIButton *)sender {
    NSString * counterString = self.leftCounterButton.titleLabel.text;
    NSInteger newCounterValue = [counterString integerValue];
    counterString = [NSString stringWithFormat:@"%@", @(++newCounterValue)];
    [self.leftCounterButton setTitle:counterString forState:UIControlStateNormal];
}

- (IBAction)setRightCounterButtonText:(UIButton *)sender {
    NSString * counterString = self.rightCounterButton.titleLabel.text;
    NSInteger newCounterValue = [counterString integerValue];
    counterString = [NSString stringWithFormat:@"%@", @(++newCounterValue)];
    [self.rightCounterButton setTitle:counterString forState:UIControlStateNormal];
}

@end
