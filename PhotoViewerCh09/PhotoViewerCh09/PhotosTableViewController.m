//
//  PhotosTableViewController.m
//  PhotoViewerCh09
//
//  Created by Kate Sohng on 2/16/18.
//  Copyright © 2018 Kate Sohng. All rights reserved.
//

#import "PhotosTableViewController.h"

@interface PhotosTableViewController () {
    // [3] Create an array that can hold the photo objects
    NSMutableArray *photos;
}

@end

@implementation PhotosTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // [19] Set the title on the first page with the table view
    self.title = @"Photos";
    
    // [5] Create array
    photos = [[NSMutableArray alloc] init];
    
    Photo *pic = [[Photo alloc] init];
    pic.name = @"Emerald Bay";
    pic.filename = @"emeraldbay";
    pic.notes = @"Emerald Bay, one of Lake Tahoe's most popular and photogenic locations.";
    [photos addObject:pic];
    
    // [6] A new pointer to a new array
    pic = [[Photo alloc] init];
    pic.name = @"A Joshua Tree";
    pic.filename = @"joshuatree";
    pic.notes = @"A Joshua Tree in the Mojave Desert";
    [photos addObject:pic];
    
    pic = [[Photo alloc] init];
    pic.name = @"Sunset in Ventura";
    pic.filename = @"sunset";
    pic.notes = @"Romantic sunset at the beach";
    [photos addObject:pic];
    
    pic = [[Photo alloc] init];
    pic.name = @"Snowman at Lake Tahoe";
    pic.filename = @"snowman";
    pic.notes = @"Lake tahoe gets 400 inches of snow every year";
    [photos addObject:pic];
    
    pic = [[Photo alloc] init];
    pic.name = @"Red Rock";
    pic.filename = @"redrock";
    pic.notes = @"Spectacular formations at Red Rock Canyon State Park";
    [photos addObject:pic];
    
    
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // [7] Return the number of sections
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // [8] Return the number of rows in the section .
    return photos.count;
}

// [9]
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    // [10] Configure the cell...
    Photo *current = [photos objectAtIndex:indexPath.row];
    cell.textLabel.text = [current name];
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

// [11] Uncommend prepareForSegue
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation

 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // [12] Create an instance of DisplayViewController
     DisplayViewController *pvc = [segue destinationViewController];
     
    // Pass the selected object to the new view controller.
    // [14] What is the selected cell?
     NSIndexPath *path = [self.tableView indexPathForSelectedRow];
     Photo *c = photos[path.row];
     [pvc setCurrentPhoto:c];
}


@end
