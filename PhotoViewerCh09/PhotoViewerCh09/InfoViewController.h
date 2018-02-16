//
//  InfoViewController.h
//  PhotoViewerCh09
//
//  Created by Kate Sohng on 2/16/18.
//  Copyright © 2018 Kate Sohng. All rights reserved.
//

#import <UIKit/UIKit.h>
// [2] import photo class
#import "Photo.h"

@interface InfoViewController : UIViewController
// [3] Pass a single photo object
@property (nonatomic) Photo *currentPhoto;

@end
