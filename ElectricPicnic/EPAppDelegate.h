//
//  EPAppDelegate.h
//  ElectricPicnic
//
//  Created by Colin McGovern on 28/08/2012.
//  Copyright (c) 2012 Colin McGovern. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EPAllEvents.h"

@interface EPAppDelegate : UIResponder <UIApplicationDelegate> {
    EPAllEvents *_allEvents;
}

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) EPAllEvents *allEvents;

@end
