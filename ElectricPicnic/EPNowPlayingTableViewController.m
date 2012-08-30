//
//  EPNowPlayingTableViewController.m
//  ElectricPicnic
//
//  Created by Colin McGovern on 29/08/2012.
//  Copyright (c) 2012 Colin McGovern. All rights reserved.
//

#import "EPNowPlayingTableViewController.h"
#import "EPAppDelegate.h"

@interface EPNowPlayingTableViewController ()

@end

@implementation EPNowPlayingTableViewController

@synthesize allEvents = _allEvents;

- (id)initWithStyle:(UITableViewStyle)style {
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    
    dataSource = self.allEvents.allEvents;
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return [dataSource count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    NSDictionary *event = (NSDictionary *)[dataSource objectAtIndex:indexPath.row];
    
    // Configure the cell...
    cell.textLabel.text = [event objectForKey:@"band"];
    
    return cell;
}


#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
}

#pragma mark - Accessors

- (EPAllEvents *)allEvents {
    if (_allEvents == nil) {
        EPAppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
        _allEvents = appDelegate.allEvents;
    }
    
    return _allEvents;
}

@end
