//
//  EPAllEvents.h
//  ElectricPicnic
//
//  Created by Colin McGovern on 28/08/2012.
//  Copyright (c) 2012 Colin McGovern. All rights reserved.
//

#import <Foundation/Foundation.h>

#define EPStageMain @"Main Stage"
#define EPStageArena @"Electric Arena"
#define EPStageCrawdaddy @"Crawdaddy Stage"
#define EPStageCosby @"Cosby Stage"
#define EPStageLittleBigTent @"Little Big Tent"
#define EPStageCasaBacardi @"Casa Bacardi"
#define EPStageSaltyDog @"Salty Dog"
#define EPStageForest @"Algorythm: The Forrest Stage"
#define EPStageTrenttown @"Trenchtown"
#define EPStageTrailerPark @"Trailer Park"
#define EPStageComedyTent @"Comedy Tent"
#define EPStageConvergence @"Convergence Stage"
#define EPStageBSMain @"Body and Soul Main Stage"
#define EPStageEarthship @"Body and Soul Earthship Stage"
#define EPStageBamboo @"Body and Soul Bamboo Stage"
#define EPStageOxjam @"Oxjam Stage"


@interface EPAllEvents : NSObject <NSFileManagerDelegate> {
    // Tracks changes (i.e. isFavourite changing)
    NSMutableArray *currentEvents;
    
    NSArray *allStages;
    NSArray *allEvents;

@private
    NSDateFormatter *_inputDateFormatter;
}

@property (nonatomic, readonly) NSDateFormatter *inputDateFormatter;


@property (nonatomic, strong) NSArray *allStages;
@property (nonatomic, strong) NSArray *allEvents;

- (EPAllEvents *)init;
- (void)updateEvent:(NSDictionary *)event;
- (void)saveEvents;
- (NSArray *)loadEvents;

@end
