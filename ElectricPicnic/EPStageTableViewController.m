//
//  EPStageTableViewController.m
//  ElectricPicnic
//
//  Created by Colin McGovern on 28/08/2012.
//  Copyright (c) 2012 Colin McGovern. All rights reserved.
//

#import "EPStageTableViewController.h"
#import "EPAppDelegate.h"

@interface EPStageTableViewController ()

@end

@implementation EPStageTableViewController

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

    dataSource = self.allEvents.allStages;
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
    static NSString *CellIdentifier = @"StageCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    NSString *stageName = [dataSource objectAtIndex:indexPath.row];
    
    // Configure the cell...
    cell.textLabel.text = stageName;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"On now: %@", [self playingOnStage:stageName]];
    
    return cell;
}

#pragma mark - Table view delegate

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Make sure your segue name in storyboard is the same as this line
    if ([[segue identifier] isEqualToString:@"StageToDetail"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        NSString *stage = (NSString *)[dataSource objectAtIndex:indexPath.row];
        
        NSPredicate *stagePredicate = [NSPredicate predicateWithFormat:@"stage like %@", stage];
        
        // Pass any objects to the view controller here, like...
        [(EPStageViewController *)segue.destinationViewController setDataSource:[self.allEvents.allEvents filteredArrayUsingPredicate:stagePredicate]];
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

#pragma mark - Playing Now


- (NSString *)playingOnStage:(NSString *)stage {
    NSDate *now = [NSDate dateWithTimeIntervalSinceNow:0];
    
    NSPredicate *thisStage = [NSPredicate predicateWithFormat:@"stage like %@", stage];
    
    NSArray *stageEvents = [self.allEvents.allEvents filteredArrayUsingPredicate:thisStage];
    
    for (NSDictionary *currentEvent in stageEvents) {
        if (([self date:(NSDate *)[currentEvent objectForKey:@"startTime"] isEarlierThanDate:now]) && ([self date:now isEarlierThanDate:[currentEvent objectForKey:@"endTime"]])) {
            return [currentEvent objectForKey:@"band"];
        }
    }
    
    return @"(None)";
}

- (BOOL)date:(NSDate *)firstDate isEarlierThanDate:(NSDate *)secondDate {
    return ([firstDate compare:secondDate] == NSOrderedAscending);
}

- (BOOL)event:(NSDictionary *)firstEvent clashesWith:(NSDictionary *)secondEvent {
    NSDate *firstStartTime = [firstEvent objectForKey:@"startTime"];
    NSDate *secondStartTime = [secondEvent objectForKey:@"startTime"];
    NSDate *firstEndTime = [firstEvent objectForKey:@"endTime"];
    NSDate *secondEndTime = [secondEvent objectForKey:@"endTime"];
    
    return ((([self date:secondStartTime isEarlierThanDate:firstStartTime]) && ([self date:firstStartTime isEarlierThanDate:secondEndTime])) ||
            (([self date:firstStartTime isEarlierThanDate:secondStartTime]) && ([self date:secondStartTime isEarlierThanDate:firstEndTime])) ||
            ([firstStartTime timeIntervalSinceDate:secondStartTime] == 0) || ([firstEndTime timeIntervalSinceDate:secondEndTime] == 0));
    
}

@end
