//
//  EPBandTableViewController.h
//  ElectricPicnic
//
//  Created by Colin McGovern on 28/08/2012.
//  Copyright (c) 2012 Colin McGovern. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EPAllEvents.h"

@interface EPBandTableViewController : UITableViewController {
    EPAllEvents *_allEvents;
    
@private
    NSArray *dataSource;
}

@property (nonatomic, readonly) EPAllEvents *allEvents;

@end
