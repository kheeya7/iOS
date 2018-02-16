//
//  DisplayViewController.m
//  PhotoViewerCh09
//
//  Created by Kate Sohng on 2/16/18.
//  Copyright © 2018 Kate Sohng. All rights reserved.
//

#import "DisplayViewController.h"

@interface DisplayViewController ()
// [4] Set the UIImaveView programatically, so that needs to exist as an outlet
@property (weak, nonatomic) IBOutlet UIImageView *currentImage;

@end

@implementation DisplayViewController

// [16]
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    InfoViewController *ivc = [segue destinationViewController];
    ivc.currentPhoto = self.currentPhoto;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // [15] Create a nes UI image object, and use the UI image named method
    UIImage *image = [UIImage imageNamed:self.currentPhoto.filename];
    [self.currentImage setImage:image];
    // [20]
    self.title = self.currentPhoto.name;
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
