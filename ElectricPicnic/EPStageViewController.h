//
//  EPStageViewController.h
//  ElectricPicnic
//
//  Created by Colin McGovern on 29/08/2012.
//  Copyright (c) 2012 Colin McGovern. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EPStageViewController : UITableViewController {
    NSArray *dataSource;
}

@property (nonatomic, strong) NSArray *dataSource;

@end
