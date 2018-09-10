//
//  StateController.h
//  StateFlags_C
//
//  Created by DevMountain on 9/10/18.
//  Copyright © 2018 trevorAdcock. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface TRAStateController : NSObject

@property (nonatomic, readonly) NSArray *states;

+ (NSArray *)abbreviations;
+ (NSArray *)fullName;

+ (TRAStateController *)shared;

@end

NS_ASSUME_NONNULL_END
