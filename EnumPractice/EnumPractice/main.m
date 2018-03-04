//
//  main.m
//  EnumPractice : Travel booking program
//
//  Created by Kate Sohng on 3/3/18.
//  Copyright © 2018 Kate Sohng. All rights reserved.
//

#import <Foundation/Foundation.h>
// Define possible range of values, restrict options with enum
enum seatPreference {
    window = 99,
    aisle = 199,
    middle = 299
};

int main(int argc, const char * argv[]) {
    @autoreleasepool {
    
        enum seatPreference bobSeatPreference = window;
        enum seatPreference fredSeatPreference = middle;
        enum seatPreference joanSeatPreference = aisle;
        
        if (bobSeatPreference == window) {
            //do something
        }
        
        NSLog(@"Bob wabts %i", bobSeatPreference);
        NSLog(@"Fred wants %i", fredSeatPreference);
        NSLog(@"Joab wants %i", joanSeatPreference);
        
    }
    return 0;
}
