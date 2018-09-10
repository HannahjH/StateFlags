//
//  State.m
//  StateFlags_C
//
//  Created by DevMountain on 9/10/18.
//  Copyright © 2018 trevorAdcock. All rights reserved.
//

#import "TRAState.h"

@implementation TRAState

- (instancetype)initWithName:(NSString *)name abbreviation:(NSString *)abbreviation{
    
    self = [super init];
    if (self){
        _name = name;
        _abbreviation = abbreviation;
    }
    return self;
}

@end
