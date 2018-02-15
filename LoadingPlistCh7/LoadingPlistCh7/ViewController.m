//
//  ViewController.m
//  LoadingPlistCh7 : Loading a property list into a table, Reusing table view cells, [12]Customizing table views, [18] Customizing table view cell
//
//  Created by Kate Sohng on 2/11-14/18.
//  Copyright © 2018 Kate Sohng. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController {
    // [2] Create a dictionary to hole the two pieces of information
    NSDictionary *courseDetails;
    // [3] Dictionary does not have a zero based numeric index, and it will be useful to have one, so create an array.
    NSArray *justCourseNames;
    
    // [12] Need another dictionary and array to hold contents from courses_wep.plist
    NSDictionary *webCourseDetails;
    NSArray *webCourseNames;
}

// [14] Implement and find the number of sectins in table view method and return 2
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}

// [17]
-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    if (section == 0) {
        return @"iOS Courses";
    } else {
        return @"Web Courses";
    }
}


// [15] Get passed in an NS integer (section number : zero based)
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section == 0) {
        return courseDetails.count;
    } else {
        return webCourseDetails.count;
    }   
}

// [7] Provide the number of rows
//-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//    return courseDetails.count;
//}

// [8] Table view cell for row at index path
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    // [9] Create a new UI Table View Cell object
    // UITableViewCell *cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    // [11] Ask the table view if it has any reusable cells
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    // [20] Retrieve an image
    UIImage *myImage = [UIImage imageNamed:@"DemoCellImage"];
    [cell.imageView setImage:myImage];
    
    // [16] Ask if the index path setion part is zero
    if (indexPath.section == 0){
        cell.textLabel.text = justCourseNames[indexPath.row];
        // [18]
        cell.detailTextLabel.text = courseDetails[justCourseNames[indexPath.row]];
    } else {
        cell.textLabel.text = webCourseNames [indexPath.row];
        // [19]
        cell.detailTextLabel.text = webCourseDetails[webCourseNames[indexPath.row]];
    }
    
    // [10] Fill cell
    // cell.textLabel.text = justCourseNames[indexPath.row];
    
    return cell;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // [4] Go and grab the URL, the location for the resource called courses with the extention P list
    NSURL *url = [[NSBundle mainBundle] URLForResource:@"courses" withExtension:@"plist"];
    // [5] Load the plist into the dictionary
    courseDetails = [NSDictionary dictionaryWithContentsOfURL:url];
    // [6] Create an array with just the keys
    justCourseNames = courseDetails.allKeys;
    
    // [13] Same purposes with 4,5,6 
    NSURL *urlWeb = [[NSBundle mainBundle] URLForResource:@"courses_web" withExtension:@"plist"];
    webCourseDetails = [NSDictionary dictionaryWithContentsOfURL:urlWeb];
    webCourseNames = webCourseDetails.allKeys;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
