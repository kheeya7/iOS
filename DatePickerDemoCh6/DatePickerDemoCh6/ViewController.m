//
//  ViewController.m
//  DatePickerDemoCh6 video 4 : Using a date picker control
//
//  Created by Kate Sohng on 2/10/18.
//  Copyright © 2018 Kate Sohng. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
// kh - The date picker should be hooked up to the relevant points, define as an outlet
@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;

@end

@implementation ViewController
- (IBAction)displayDay:(id)sender {
    // kh - This method is going to need to reach into the UI date picker control, and access the contents of that.
    // kh - grab the selected date on the date picker
    NSDate *chosen = [self.datePicker date];
    // kh - create an NSDateFormatter
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"EEEE"];
    NSString *weekday = [formatter stringFromDate:chosen];
    NSString *msg = [[NSString alloc] initWithFormat:@"That's a %@", weekday];
    // kh
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"What day is that?" message:msg delegate:nil cancelButtonTitle:@"Okay" otherButtonTitles:nil, nil];
    [alert show];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
