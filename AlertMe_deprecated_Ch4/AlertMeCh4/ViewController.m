//
//  ViewController.m
//  AlertMeCh4
//
//  Created by Kate Sohng on 2/6/18.
//  Copyright © 2018 Kate Sohng. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    // [Kh]
    UIAlertView *myAlert = [[UIAlertView alloc] initWithTitle:@"Immediate Alert!" message:@"Here's your immediate alert message. It should appear when the app launches." delegate:nil cancelButtonTitle:@"Okay" otherButtonTitles:nil, nil];
    [myAlert show];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
