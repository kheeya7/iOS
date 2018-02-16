//
//  InfoViewController.m
//  PhotoViewerCh09
//
//  Created by Kate Sohng on 2/16/18.
//  Copyright © 2018 Kate Sohng. All rights reserved.
//

#import "InfoViewController.h"

@interface InfoViewController ()
// [4] Set the UIImaveView programatically, so that needs to exist as an outlet
@property (weak, nonatomic) IBOutlet UILabel *detailsLabel;

@end

@implementation InfoViewController
// [18]
- (IBAction)dismiss:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // [17] Set the contents of my label to whatever the notes property of the photo that got passed in
    self.detailsLabel.text = [self.currentPhoto notes];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
