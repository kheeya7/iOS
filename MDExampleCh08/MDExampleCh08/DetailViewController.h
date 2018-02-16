//
//  DetailViewController.h
//  MDExampleCh08
//
//  Created by Kate Sohng on 2/15/18.
//  Copyright © 2018 Kate Sohng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) NSDate *detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

