//
//  Photo.h
//  PhotoViewerCh09
//
//  Created by Kate Sohng on 2/16/18.
//  Copyright © 2018 Kate Sohng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Photo : NSObject

// [1] Define three properties : name of the photo, actual file name, and some notes
@property (nonatomic) NSString *name;
@property (nonatomic) NSString *filename;
@property (nonatomic) NSString *notes;

@end
