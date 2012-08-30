//
//  EPBandDetailViewController.m
//  ElectricPicnic
//
//  Created by Colin McGovern on 29/08/2012.
//  Copyright (c) 2012 Colin McGovern. All rights reserved.
//

#import "EPBandDetailViewController.h"
#import "EPAppDelegate.h"

@interface EPBandDetailViewController ()

@end

@implementation EPBandDetailViewController

@synthesize bandLabel;
@synthesize urlButton;
@synthesize startTimeLabel;
@synthesize endTimeLabel;
@synthesize venueLabel;
@synthesize favouriteButton;
@synthesize dayLabel;

@synthesize allEvents = _allEvents;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    assert(self.event != nil);
    
    self.navigationItem.title = (NSString *)[self.event objectForKey:@"band"];
    
    self.bandLabel.text = (NSString *)[self.event objectForKey:@"band"];
    
    NSDateFormatter *_timeOnlyFormatter = [[NSDateFormatter alloc] init];
    [_timeOnlyFormatter setDateFormat:@"H:mm"];
    
    NSDateFormatter *_dayOnlyFormatter = [[NSDateFormatter alloc] init];
    [_dayOnlyFormatter setDateFormat:@"EEEE"];
    
    if ([@"No URL" isEqualToString:[self.event objectForKey:@"url"]]) {
        [self.urlButton setHidden:YES];
    } else {
        [self.urlButton setHidden:NO];
    }
    
    self.startTimeLabel.text = [NSString stringWithFormat:@"Start: %@",
                                [_timeOnlyFormatter stringFromDate:(NSDate *)[NSDate dateWithTimeInterval:-3600 sinceDate:[self.event objectForKey:@"startTime"]]]];
    self.endTimeLabel.text = [NSString stringWithFormat:@"End: %@",
                              [_timeOnlyFormatter stringFromDate:[NSDate dateWithTimeInterval:-3600 sinceDate:(NSDate *)[self.event objectForKey:@"endTime"]]]];
    self.venueLabel.text = [self.event objectForKey:@"stage"];
    self.dayLabel.text = [_dayOnlyFormatter stringFromDate:(NSDate *)[self.event objectForKey:@"startTime"]];
    [self.favouriteButton setTitle:([(NSNumber *)[self.event objectForKey:@"isFavourite"] isEqualToNumber:[NSNumber numberWithInt:1]]) ? @"Unfavourite" : @"Favourite" forState:UIControlStateNormal];
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)favouriteButtonPressed:(id)sender {
    NSMutableDictionary *newEvent = [[NSMutableDictionary alloc] initWithDictionary:self.event];
    
    NSNumber *newNumber = ([(NSNumber *)[self.event objectForKey:@"isFavourite"] isEqualToNumber:[NSNumber numberWithInt:1]]) ? [NSNumber numberWithInt:0] : [NSNumber numberWithInt:1];
    
    // Toggle favourite
    [newEvent setObject:newNumber forKey:@"isFavourite"];
    
    // Update events
    [self.allEvents updateEvent:newEvent];
    
    self.event = [NSDictionary dictionaryWithDictionary:newEvent];
    
    // Toggle button
    [self.favouriteButton setTitle:([(NSNumber *)[self.event objectForKey:@"isFavourite"] isEqualToNumber:[NSNumber numberWithInt:1]]) ? @"Unfavourite" : @"Favourite" forState:UIControlStateNormal];
}

- (IBAction)urlButtonPressed:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[self.event objectForKey:@"url"]]];
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
