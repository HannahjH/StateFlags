//
//  TRAStateCollectionViewCell.h
//  StateFlags_C
//
//  Created by DevMountain on 9/10/18.
//  Copyright © 2018 trevorAdcock. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TRAState.h"

NS_ASSUME_NONNULL_BEGIN

@interface TRAStateCollectionViewCell : UICollectionViewCell

@property (nonatomic) TRAState *state;

- (void) updateViews;

@end

NS_ASSUME_NONNULL_END
