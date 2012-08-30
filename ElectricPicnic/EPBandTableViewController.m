//
//  EPBandTableViewController.m
//  ElectricPicnic
//
//  Created by Colin McGovern on 28/08/2012.
//  Copyright (c) 2012 Colin McGovern. All rights reserved.
//

#import "EPBandTableViewController.h"
#import "EPAppDelegate.h"
#import "EPBandDetailViewController.h"

@interface EPBandTableViewController ()

@end

@implementation EPBandTableViewController

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

    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:@"band" ascending:YES];
    NSArray *sortDescriptors = [NSArray arrayWithObject:sortDescriptor];

    dataSource = [self.allEvents.allEvents sortedArrayUsingDescriptors:sortDescriptors];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)viewWillAppear:(BOOL)animated {
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:@"band" ascending:YES];
    NSArray *sortDescriptors = [NSArray arrayWithObject:sortDescriptor];
    
    dataSource = [self.allEvents.allEvents sortedArrayUsingDescriptors:sortDescriptors];
    [self.tableView reloadData];
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
    dataSource = nil;
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
    static NSString *CellIdentifier = @"BandCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    NSDictionary *event = [dataSource objectAtIndex:indexPath.row];
    
    NSDateFormatter *_prettyPrintedDateFormatter = [[NSDateFormatter alloc] init];
    [_prettyPrintedDateFormatter setDateFormat:@"E H:mm"];
    
    NSDateFormatter *_timeOnlyFormatter = [[NSDateFormatter alloc] init];
    [_timeOnlyFormatter setDateFormat:@"H:mm"];
    
    NSString *timeSlot = [NSString stringWithFormat:@"%@ - %@", [_prettyPrintedDateFormatter stringFromDate:(NSDate *)[event objectForKey:@"startTime"]],
                                                                [_timeOnlyFormatter stringFromDate:(NSDate *)[event objectForKey:@"endTime"]]];

    // Configure the cell...
    cell.textLabel.text = (NSString *)[event objectForKey:@"band"];
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%@ %@", [event objectForKey:@"stage"], timeSlot];
    
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Make sure your segue name in storyboard is the same as this line
    if ([[segue identifier] isEqualToString:@"BandToDetail"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        NSDictionary *event = [dataSource objectAtIndex:indexPath.row];
        
        // Pass any objects to the view controller here, like...
        [(EPBandDetailViewController *)segue.destinationViewController setEvent:event];
    }
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
