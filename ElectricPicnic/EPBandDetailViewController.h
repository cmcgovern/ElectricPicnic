//
//  EPBandDetailViewController.h
//  ElectricPicnic
//
//  Created by Colin McGovern on 29/08/2012.
//  Copyright (c) 2012 Colin McGovern. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EPAllEvents.h"

@interface EPBandDetailViewController : UIViewController {
    EPAllEvents *_allEvents;
    
    NSDictionary *event;
    
    UILabel *bandLabel;
    UIButton *urlButton;
    UILabel *startTimeLabel;
    UILabel *endTimeLabel;
    UILabel *venueLabel;
    UILabel *dayLabel;
    
    UIButton *favouriteButton;
}

@property (nonatomic, readonly) EPAllEvents *allEvents;
@property (nonatomic, strong) NSDictionary *event;

@property (nonatomic, strong) IBOutlet UILabel *bandLabel;
@property (nonatomic, strong) IBOutlet UIButton *urlButton;
@property (nonatomic, strong) IBOutlet UILabel *startTimeLabel;
@property (nonatomic, strong) IBOutlet UILabel *endTimeLabel;
@property (nonatomic, strong) IBOutlet UILabel *venueLabel;
@property (nonatomic, strong) IBOutlet UILabel *dayLabel;

@property (nonatomic, strong) IBOutlet UIButton *favouriteButton;

- (IBAction)favouriteButtonPressed:(id)sender;
- (IBAction)urlButtonPressed:(id)sender;

@end
