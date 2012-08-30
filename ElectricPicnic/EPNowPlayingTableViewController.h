//
//  EPNowPlayingTableViewController.h
//  ElectricPicnic
//
//  Created by Colin McGovern on 29/08/2012.
//  Copyright (c) 2012 Colin McGovern. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EPAllEvents.h"

@interface EPNowPlayingTableViewController : UITableViewController  {
    EPAllEvents *_allEvents;
    
    NSArray *dataSource;
}

@property (nonatomic, strong) EPAllEvents *allEvents;

@end
