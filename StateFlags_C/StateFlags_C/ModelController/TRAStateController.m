//
//  StateController.m
//  StateFlags_C
//
//  Created by DevMountain on 9/10/18.
//  Copyright © 2018 trevorAdcock. All rights reserved.
//

#import "TRAStateController.h"
#import "TRAState.h"

@implementation TRAStateController

+ (NSArray *)abbreviations {
    
    return @[@"AL", @"AK", @"AZ", @"AR", @"CA", @"CO", @"CT", @"DE", @"FL", @"GA", @"HI", @"ID", @"IL", @"IN", @"IA", @"KS", @"KY", @"LA", @"ME", @"MD", @"MA", @"MI", @"MN", @"MS", @"MO", @"MT", @"NE", @"NV", @"NH", @"NJ", @"NM", @"NY", @"NC", @"ND", @"OH", @"OK", @"OR", @"PA", @"RI", @"SC", @"SD", @"TN", @"TX", @"UT", @"VT", @"VA", @"WA", @"WV", @"WI", @"WY"];
}

+ (NSArray *)fullNames {
    
    return @[@"Alaska", @"Alabama", @"Arizona", @"Arkansas", @"California", @"Colorado", @"Connecticut", @"Delaware", @"Florida", @"Georgia", @"Hawaii", @"Idaho", @"Illinois", @"Indiana", @"Iowa", @"Kansas", @"Kentucky", @"Louisiana", @"Maine", @"Maryland", @"Massachusetts", @"Michigan", @"Minnesota", @"Mississippi", @"Missouri", @"Montana", @"Nebraska", @"Nevada", @"New Hampshire", @"New Jersey", @"New Mexico", @"New York", @"North Carolina", @"North Dakota", @"Ohio", @"Oklahoma", @"Oregon", @"Pennsylvania", @"Rhode Island", @"South Carolina", @"South Dakota", @"Tennessee", @"Texas", @"Utah", @"Vermont", @"Virginia", @"Washington", @"West Virginia", @"Wisconsin", @"Wyoming"];
}

+ (TRAStateController *)shared{
    static TRAStateController *shared = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shared = [TRAStateController new];
    });
    return shared;
}

-(instancetype)init {
    self = [super init];
    if (self){
        _states = [self createAllStates];
    }
    return self;
}

- (NSArray *)createAllStates {
    NSMutableArray *placeHolderState = [[NSMutableArray alloc] init];
    for (NSString *stateFullName in [TRAStateController fullNames]){
        NSUInteger index = [[TRAStateController fullNames] indexOfObject:stateFullName];
        NSString *abbreviation = [TRAStateController abbreviations][index];
        TRAState *state = [[TRAState alloc] initWithName:stateFullName abbreviation:abbreviation];
        [placeHolderState addObject:state];
    }
    return placeHolderState;
}

@end









