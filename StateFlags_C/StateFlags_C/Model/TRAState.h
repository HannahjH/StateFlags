//
//  State.h
//  StateFlags_C
//
//  Created by DevMountain on 9/10/18.
//  Copyright © 2018 trevorAdcock. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface TRAState : NSObject

@property (nonatomic, copy, readonly) NSString *name;
@property (nonatomic) NSString *abbreviation;

- (instancetype)initWithName:(NSString *)name abbreviation:(NSString *)abbreviation;

@end

NS_ASSUME_NONNULL_END
