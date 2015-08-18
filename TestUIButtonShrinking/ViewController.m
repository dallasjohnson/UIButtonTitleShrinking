//
//  ViewController.m
//  TestUIButtonShrinking
//
//  Created by Dallas Johnson on 18/08/2015.
//  Copyright (c) 2015 Dallas Johnson. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic,assign) BOOL longString;

@end

@implementation ViewController

- (IBAction)changeLabel:(UIButton *)sender {
    NSString *text = self.longString ? @"aaaaaaaaaaaaaaaa": @"bbbbb";
    [sender setTitle:text forState:UIControlStateNormal];
    self.longString = !self.longString;
}


@end
