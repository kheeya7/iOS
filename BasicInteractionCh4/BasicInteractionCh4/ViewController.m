//
//  ViewController.m
//  BasicInteractionCh4
//
//  Created by Kate Sohng on 2/6/18.
//  Copyright © 2018 Kate Sohng. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
// kh
@property (weak, nonatomic) IBOutlet UITextField *simpleTextField;
@property (weak, nonatomic) IBOutlet UILabel *simpleLabel;

@end

@implementation ViewController

- (IBAction)changeLabel:(id)sender {
    // [Kh]
    NSString *contents = [[self simpleTextField] text];
    // [Kh]or:             self.simpleTextField.text
    
    NSString *message = [NSString stringWithFormat:@"Hello, %@", contents];
    [self.simpleLabel setText:message];
    
    // [Kh] Tell it, give up the editing priority status
    [self.simpleTextField resignFirstResponder];
}

// [kh] touchesBegan withEvent is a built-in method that we can choose to implement in our own view controller classes.
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    // [kh] Give up the first responder status when we touch anywhere else on the screen
    [self.view endEditing:YES];
}

// [Kh] It asks the delegate object if the text field should process the pressing of the Return button.
- (BOOL)textFieldShouldReturn: (UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
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
