//
//  EPAllEvents.m
//  ElectricPicnic
//
//  Created by Colin McGovern on 28/08/2012.
//  Copyright (c) 2012 Colin McGovern. All rights reserved.
//

#import "EPAllEvents.h"

@interface EPAllEvents ()

- (NSInteger)findIndexForBandName:(NSString *)bandname;

@end

@implementation EPAllEvents

@synthesize allStages;
@synthesize allEvents;

@synthesize inputDateFormatter = _inputDateFormatter;

/*
 Comedy Tent Line Up
 
 Sat Sept 1st
 
 13.30-13.45	MC's Andrew Stanley and Damian Clarke
 13.45-14.05	Colm McDonnell
 14.05-14.20	Danny Dowling
 14.25-14.40	Tomie James
 14.40-15.00	Eric Lalor
 15.05-15.45 Steve Frost Impro Allstars
 15.50-16.10	Chris Kent
 16.10-16.30	Keith Farnan
 16.40-16.55	Johnny Graham
 16.55-17.20	John Colleary
 17.25-17.50	Jarlath Regan
 17.55-18.25	Dead Cat Bounce
 18.30-18.55	Kevin McAleer
 18.55-19.20	Gearoid Farrelly
 19.20-19.45	David McSavage
 19.45-20.10	Joe Rooney
 20.15-21.00	Patrick Kielty
 
 Sunday Sept 2nd
 13.30-13.45	MC's Andrew Stanley and Damian Clarke
 13.45-14.05	Fred Cooke
 14.05-14.15	Ursula Burns
 14.20-14.40	Rory O Hanlon
 14.40-15.00	Foil Arms and Hog
 15.05-15.45	Steve Frost Improv Allstars
 15.55-16.15	John Lynn
 16.15-16.30	Totally Wired
 16.30-16.55	Colm O Regan
 17.00-17.30	Abandoman
 17.35-17.55	Barry Murphy
 17.55-18.20	Bernard O Shea
 18.20-18.40	Karl Spain
 18.45-19.10	Patrick McDonnell
 19.10-19.40	The Nualas
 19.40-20.10	Glen Wool
 20.15-21.00	David O Doherty
*/

/*
The Salty Dog Stage – Line Up

Friday, 31 August 2012

03:00-04.00 Black Friday
02:00-02.50 Swords
01:00-01.50 The Eskies
23:00-23.50 Jerry Fish
22:00-22.50 Two Time Polka
21:00-21.45 Shannon And The Shortcuts
20:00-20.45 Huey And The Hobgoblins
19:00-19.45 Homebrew And The Bad Examples
18:00-18.45 The Niall Toner Band
17:00-17.45 Louisiana Six
16:00-16.45 Carosel

Saturday, 1 September 2102

02:40-04.00 Tierannisaur
01:30-02.30 Morton Valance
00:30-01.20 Ham Sandwich
23:30-23.20 Bellowhead
22:15-23.15 Bronagh Gallagher
22:00-22.10 Shane Hennessy
21:00-21.50 Beef Supreme
20:00-20.50 Hat Fitz And Cara
19:00-19.45 Transformation Blues Band
17:55-18.45 Barley Mob
16:55-17.40 Propellor Palms
14:40-15.30 [Most of] Camembert Quartet: The Nautical Request Hour
13:30-14.30 Tucan
12:00-13.15 Pervish

Sunday, 2 September 2102

02.00-03.00 The Mighty Stef
01.00-01.50 Cujo Family
24.00-24.50 Black Friday
22.45-23.45 The Pete Pamf Sextette
21:00-22.30 Cracked Bucket Band and Blank Squares
19:00-19.50 Fred
18:00-18.50 Dem Fools
17:00-17.50 Raglan
16:00-16.50 Gypsy Rebel Rabble
15:00-15.50 Fox E & The Good Hands
14:00-14.50 The Dead Zoo
12:00-14.00 Tom Whitrow and Nick Sergeant’s Gospel Love Brunch
*/

/*
 The Forest Stage
 
 Friday: 10 2 1
 16.00-21.00 James Kirwan
 21.00-22.00 Cian Little Byrne
 22.00-23.00 Nathen Jones
 23.00-00.00 Lorcan Mak
 00.00-01.00 Monto
 01.00-02.00 Clu
 02.00-03.00 Frank Sweeney
 03.00-.04.00 Steven Neligan
 
 Saturday: T3
 16.00-17.00 John Rainey
 17.00-18.00 Jika Jika DJs
 18.00-19.00 Republik DJs
 19.00-20.00 Bunga Bunga DJs
 20.00-21.00 Alex Zander
 21.00-22.00 Simon Helsin
 22.00-23.00 Phil Galvin Jnr
 23.00-00.00 Doug Cooney
 00.00-02.00 Paul Woolford Vs Psycatron
 02.00-04.00 Loco & Jam
 
 Sunday: Bodytonic
 16.00-17.00 - Conor L & Ro Flynn
 17.00-18.00 - Frankie G & Bingo
 18.00-19.00 - Tonie Walsh & Aoife Ni Canna
 19.00-20.00 - Tom Beary & Kormac
 20.00-21.00 - Chewy
 21.00-22.00 - Steve Flynn & Simon Resoul
 22.00-23.00 - Tr-One
 23.00-00.00 - Mike Black & Steve Egri
 00.00-02.00 - Bodytonic Sound System
 02.00-03.00 - Barry Redsetta
 03.00-04.00 - Nic James
 */

/*
 Trailer Park
 
 FRIDAY
 
 7.00pm DJ Alice Beresford
 9.00pm Prison Love
 10.30pm Kevin Doyle and the Way it Was Orchestra
 12.00pm Two Time Polka
 1.30pm Riptide Movement
 2.45am Interstate 95: TR-ONE on the decks
 
 
 SATURDAY
 
 
 4.00pm Lewis Floyd
 5.15pm Raglan Rodeo
 6.30pm The Strypes
 7.30pm Louisiana 6
 9.00pm Prime Casuals
 10.30pm Come on Live Long
 11.45pm This Side Up
 12.15pm Oddsocks Revival
 2am DJ Will Dempsey: Billy Bob Junior Junior
 
 
 SUNDAY
 
 5.00pm The Strypes
 6.00pm Elevens
 7.30pm The Higglers
 9.00pm John Blek and the Rats
 10.00pm Jethro Pickett
 11.00pm Preachers Son
 12.00am Trap Door
 12.45am David Kitt on the decks: Transamerican Express

*/

/*
 Trenchtown 
 Friday:
 18:00 - DJ Will softly
 19:00 - Avatar
 20:00 - DJ Tivo
 21:00 - Dubtown Vibration
 22:00 - DJ Kali
 23:00 - Jameire
 00:00 - DJ Cian Finn
 01:00 - Dub Investigation
 02:00 - Revelation Soundsystem DJ
 
 Saturday:
 15:00 - Irish Roots Army
 17:00 - Weedway
 18:00 - DJ Dreadzilla
 19:00 - Trenchtown
 20:00 - DJ Ram
 21:00 - Pressure Drop
 22:00 - Pressure Drop Soundsystem
 
 DJs
 23:00 - Karma Parking
 00:00 - DJ crazy-d , MC Jigsaw
 01:00 - Indica
 02:00 - The Dirty Dubsters
 
 Sunday:
 15:30 - Angels & Demons
 16:00 - Tadgh Byrne Of Junior Spesh
 17:00 - The Reggulators
 18:00 - DJ Rootsman Wurzel
 19:00 - The Barley Mob
 20:00 - DJ Bibi Ewa
 21:00 - Irie Ireland DJs
 22:00 - DJ Ras Tinny
 23:00 - Skazz
 00:00 - Dj Andrew K
 01:00 - Mog-Y
 02:00 - Worries Outernational

 */

/*
http://electricpicnic.ie/aplasticrose "A Plastic Rose"
http://electricpicnic.ie/askillz "A-Skillz"
http://electricpicnic.ie/alabamashakes "Alabama Shakes"
http://electricpicnic.ie/amineedge "Amine Edge"
http://electricpicnic.ie/arveenemiskpresentsacidfuture "Arveene & Misk Presents 'Acid Future'"
http://electricpicnic.ie/azealiabanks1 "Azealia Banks"
http://electricpicnic.ie/bassnectar "Bassnectar"
http://electricpicnic.ie/batforlashes "Bat for Lashes"
http://electricpicnic.ie/bats "Bats"
http://electricpicnic.ie/baxterdury "Baxter Dury"
http://electricpicnic.ie/bellx1 "Bell X1"
http://electricpicnic.ie/bellowhead "Bellowhead"
http://electricpicnic.ie/benhoward "Ben Howard"
http://electricpicnic.ie/bigdishgo "Big Dish Go"
http://electricpicnic.ie/bombaybicycleclub "Bombay Bicycle Club"
http://electricpicnic.ie/caribouvsfourtetb2bdjset "Caribou vs. Four Tet (B2B Dj Set)"
http://electricpicnic.ie/cashierno9 "Cashier No 9"
http://electricpicnic.ie/cathydavey "Cathy Davey"
http://electricpicnic.ie/catzndogz "Catz N' Dogz"
http://electricpicnic.ie/christymoore "Christy Moore"
http://electricpicnic.ie/cloudcastlelake "Cloud Castle Lake"
http://electricpicnic.ie/coldspecks "Cold Specks"
http://electricpicnic.ie/cranes "Cranes"
http://electricpicnic.ie/crazypdjset "Crazy P (DJ Set)"
http://electricpicnic.ie/crystalcastles "Crystal Castles"
http://electricpicnic.ie/daithi "Daithi"
http://electricpicnic.ie/dakota661 "Dakota 66"
http://electricpicnic.ie/darshanjesranimetroarea "Darshan Jesrani (Metro Area)"
http://electricpicnic.ie/davidkittplaysthebigromance "David Kitt plays The Big Romance"
http://electricpicnic.ie/delorentos "Delorentos"
http://electricpicnic.ie/dexys "Dexys"
http://electricpicnic.ie/discotekken "Discotekken"
http://electricpicnic.ie/djwld "DJ W!LD"
http://electricpicnic.ie/donallunnyandyirvineliamoflynnandpaddyglackin "Donal Lunny, Andy Irvine, Liam O Flynn, and Paddy Glackin"
http://electricpicnic.ie/drytheriver "Dry The River"
http://electricpicnic.ie/dublingospelchoir1 "Dublin Gospel Choir"
http://electricpicnic.ie/eagleandtheworm "Eagle and the Worm"
http://electricpicnic.ie/edsheeran "Ed Sheeran"
http://electricpicnic.ie/elbow "Elbow"
http://electricpicnic.ie/enemies "Enemies"
http://electricpicnic.ie/explosionsinthesky "Explosions In The Sky"
http://electricpicnic.ie/fatoumatadiawara "Fatoumata Diawara"
http://electricpicnic.ie/forrests "Forrests"
http://electricpicnic.ie/franoisk "François K"
http://electricpicnic.ie/garethdunlop "Gareth Dunlop"
http://electricpicnic.ie/gavinfriday1 "Gavin Friday"
http://electricpicnic.ie/glenhansard "Glen Hansard"
http://electricpicnic.ie/godisanastronaut "God Is An Astronaut"
http://electricpicnic.ie/grandaddy "Grandaddy"
http://electricpicnic.ie/grimes "Grimes"
http://electricpicnic.ie/grizzlybear "Grizzly Bear"
http://electricpicnic.ie/hamsandwich "Ham Sandwich"
http://electricpicnic.ie/heathers "Heathers"
http://electricpicnic.ie/hotchip "Hot Chip"
http://electricpicnic.ie/hudsonmohawke "Hudson Mohawke"
http://electricpicnic.ie/intuanua "In Tua Nua"
http://electricpicnic.ie/jamesmurphydjset "James Murphy (DJ Set)"
http://electricpicnic.ie/jeffreylewis "Jeffrey Lewis"
http://electricpicnic.ie/johntalabotdjset "John Talabot (DJ Set)"
http://electricpicnic.ie/jonathanwilson "Jonathan Wilson"
http://electricpicnic.ie/juniorboys "Junior Boys"
http://electricpicnic.ie/katiekim "Katie Kim"
http://electricpicnic.ie/kidkarate1 "Kid Karate"
http://electricpicnic.ie/kimbra1 "Kimbra"
http://electricpicnic.ie/kormacsbigband "Kormac’s Big Band"
http://electricpicnic.ie/landlovers "Land Lovers"
http://electricpicnic.ie/lanternsonthelake "Lanterns On The Lake"
http://electricpicnic.ie/legalaxie "Le Galaxie"
http://electricpicnic.ie/leescratchperrymaxromeo "Lee ‘Scratch’ Perry & Max Romeo"
http://electricpicnic.ie/liannelahavas "Lianne La Havas"
http://electricpicnic.ie/littleroy "Little Roy"
http://electricpicnic.ie/marklanegan "Mark Lanegan"
http://electricpicnic.ie/metronomy "Metronomy"
http://electricpicnic.ie/michaelkiwanuka "Michael Kiwanuka"
http://electricpicnic.ie/mickflannery "Mick Flannery"
http://electricpicnic.ie/milagres "Milagres"
http://electricpicnic.ie/mmoths "Mmoths"
http://electricpicnic.ie/moscowmetro "Moscow Metro"
http://electricpicnic.ie/nellbryden "Nell Bryden"
http://electricpicnic.ie/notsquares "Not Squares"
http://electricpicnic.ie/ofmonstersandmen "Of Monsters and Men"
http://electricpicnic.ie/optimo "Optimo"
http://electricpicnic.ie/orbital "Orbital"
http://electricpicnic.ie/orquesta "Orquesta"
http://electricpicnic.ie/patmahoney "Pat Mahoney"
http://electricpicnic.ie/patrickwatson12 "Patrick Watson"
http://electricpicnic.ie/pattismith "Patti Smith"
http://electricpicnic.ie/paulbuchanan "Paul Buchanan"
http://electricpicnic.ie/perfumegenius "Perfume Genius"
http://electricpicnic.ie/prinsthomas "Prins Thomas"
http://electricpicnic.ie/rainyboysleep "Rainy Boy Sleep"
http://electricpicnic.ie/richardhawley "Richard Hawley"
http://electricpicnic.ie/richiehawtin "Richie Hawtin"
http://electricpicnic.ie/rootsmanuva "Roots Manuva"
http://electricpicnic.ie/rustie "Rustie"
http://electricpicnic.ie/sbtrkt "SBTRKT"
http://electricpicnic.ie/ships "Ships"
http://electricpicnic.ie/sigurrs "Sigur Rós"
http://electricpicnic.ie/solarbears "Solar Bears"
http://electricpicnic.ie/spacedimensioncontroller "Space Dimension Controller"
http://electricpicnic.ie/squarehead "Squarehead"
http://electricpicnic.ie/squarepusher "Squarepusher"
http://electricpicnic.ie/staffbendabilili1 "Staff Benda Bilili"
http://electricpicnic.ie/stevenmanning "Steven Manning"
http://electricpicnic.ie/subaltern "Subaltern"
http://electricpicnic.ie/the2bears1 "The 2 Bears"
http://electricpicnic.ie/theantlers "The Antlers"
http://electricpicnic.ie/thecastofcheers1 "The Cast of Cheers"
http://electricpicnic.ie/thecure "The Cure"
http://electricpicnic.ie/thefatladysings "The Fat Lady Sings"
http://electricpicnic.ie/thehorrors "The Horrors"
http://electricpicnic.ie/thejezabels12 "The Jezabels"
http://electricpicnic.ie/thejuanmaclean "The Juan Maclean"
http://electricpicnic.ie/thekanyutree1 "The Kanyu Tree"
http://electricpicnic.ie/thekillers "The Killers"
http://electricpicnic.ie/themaccabees "The Maccabees"
http://electricpicnic.ie/therevenge "The Revenge"
http://electricpicnic.ie/theriptidemovement "The Riptide Movement"
http://electricpicnic.ie/theroots "The Roots"
http://electricpicnic.ie/thestaves "The Staves"
http://electricpicnic.ie/thevaccines1 "The Vaccines"
http://electricpicnic.ie/thewondervillians "The Wonder Villians"
http://electricpicnic.ie/thexx "The xx"
http://electricpicnic.ie/tieranniesaur "Tieranniesaur"
http://electricpicnic.ie/tindersticks "Tindersticks"
http://electricpicnic.ie/toddterje "Todd Terje"
http://electricpicnic.ie/totallyenormousextinctdinosaurs "Totally Enormous Extinct Dinosaurs"
http://electricpicnic.ie/trinityorchestra "Trinity Orchestra"
http://electricpicnic.ie/tuki1 "Tu-Ki"
http://electricpicnic.ie/turn "Turn"
http://electricpicnic.ie/vandykeparks "Van Dyke Parks"
http://electricpicnic.ie/villagers "Villagers"
http://electricpicnic.ie/wallisbird "Wallis Bird"
http://electricpicnic.ie/whitecollarboy "White Collar Boy"
http://electricpicnic.ie/wildbeasts "Wild Beasts"
http://electricpicnic.ie/willisearlbeal "Willis Earl Beal"
*/
- (EPAllEvents *)init {
    
    if (self = [super init]) {
        // Attempt to load events - they won't exist if the app is just installed
        currentEvents = [[NSMutableArray alloc] initWithArray:[self loadEvents]];
        
        self.allEvents = [NSArray arrayWithArray:currentEvents];

        self.allStages = [NSArray arrayWithObjects:EPStageMain,
                                                   EPStageArena,
                                                   EPStageCrawdaddy,
                                                   EPStageCosby,
                                                   EPStageLittleBigTent,
                                                   EPStageCasaBacardi,
                                                   EPStageSaltyDog,
                                                   EPStageForest,
                                                   EPStageTrenttown,
                                                   EPStageTrailerPark,
                                                   EPStageComedyTent,
                                                   EPStageConvergence,
                                                   EPStageBSMain ,
                                                   EPStageEarthship,
                                                   EPStageBamboo,
                                                   EPStageOxjam, nil];
    }
    
    return self;
}

- (NSDictionary *)newEvent:(NSString *)theBand stage:(NSString *)theStage startTime:(NSDate *)theStartTime endTime:(NSDate *)theEndTime url:(NSString *)theURL {
    return [[NSDictionary alloc] initWithObjectsAndKeys:theBand, @"band",
                                                        theStage, @"stage",
                                                        theStartTime, @"startTime",
                                                        theEndTime, @"endTime",
                                                        theURL, @"url",
                                                        [NSNumber numberWithInt:0], @"isFavourite", nil];
}


- (NSInteger)findIndexForBandName:(NSString *)bandname {
    NSInteger i = 0;
    
    for (NSDictionary *event in currentEvents) {
        if ([bandname isEqualToString:(NSString *)[event objectForKey:@"band"]]) {
            return i;
        }
        i++;
    }
    
    return -1;
}

- (void)updateEvent:(NSDictionary *)event {
    // Find event in list
    NSInteger eventIndex = [self findIndexForBandName:[event objectForKey:@"band"]];
    
    // Should never happen since composition doesn't change
    assert(eventIndex != -1);
    
    // Replace event
    [currentEvents removeObjectAtIndex:eventIndex];
    [currentEvents addObject:event];
    
    // Update allEvents
    self.allEvents = [NSArray arrayWithArray:currentEvents];
    
    // Save to disk
    [self saveEvents];
}

- (NSDateFormatter *)inputDateFormatter {
    if (_inputDateFormatter == nil) {
        _inputDateFormatter = [[NSDateFormatter alloc] init];
        [_inputDateFormatter setDateFormat:@"YYYY-MM-dd HH:mm:ss Z"];
    }
    
    return _inputDateFormatter;
}

- (void)saveEvents {
    NSString *error;
    NSString *rootPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];
    NSString *plistPath = [rootPath stringByAppendingPathComponent:@"events.plist"];
    NSData *plistData = [NSPropertyListSerialization dataFromPropertyList:self.allEvents
                                                                   format:NSPropertyListXMLFormat_v1_0
                                                         errorDescription:&error];
    if(plistData) {
        [plistData writeToFile:plistPath atomically:YES];
    } else {
        NSLog(@"Error : %@",error);
    }
}

- (NSArray *)loadEvents {
    NSError *error;
    NSFileManager *fileManager = [NSFileManager defaultManager];
    [fileManager setDelegate:self];
    NSString *rootPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];
    NSString *plistPath = [rootPath stringByAppendingPathComponent:@"events.plist"];
    
    NSString *path = [[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:@"events.plist"];
    BOOL success = [fileManager copyItemAtPath:path toPath:plistPath error:&error];
    
    if (!success) {
        NSLog(@"Failed to copy: %@", [error localizedDescription]);
    }
    
    NSData *plistData = [NSData dataWithContentsOfFile:plistPath];
    
    if (plistData == nil) {
        NSLog(@"Error loading data");
    } else {
        NSArray *loadedEvents = (NSArray *)[NSPropertyListSerialization propertyListWithData:plistData
                                                                                     options:NSPropertyListImmutable
                                                                                      format:nil
                                                                                       error:&error];
        
        if (error != nil) {
            NSLog(@"Error reading data: %@", [error localizedDescription]);
            return nil;
        }
        
        return loadedEvents;
    }
    
    return nil;
}

- (BOOL)fileManager:(NSFileManager *)fileManager shouldProceedAfterError:(NSError *)error copyingItemAtPath:(NSString *)srcPath toPath:(NSString *)dstPath {
    return YES;
}

@end
