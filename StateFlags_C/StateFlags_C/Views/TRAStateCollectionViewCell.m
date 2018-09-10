//
//  TRAStateCollectionViewCell.m
//  StateFlags_C
//
//  Created by DevMountain on 9/10/18.
//  Copyright © 2018 trevorAdcock. All rights reserved.
//

#import "TRAStateCollectionViewCell.h"
#import "TRAState.h"

@interface TRAStateCollectionViewCell ()

@property (weak, nonatomic) IBOutlet UIImageView *flageImageView;
@property (weak, nonatomic) IBOutlet UILabel *stateNameLabel;

@end



@implementation TRAStateCollectionViewCell

-(void)updateViews {
    self.flageImageView.image = [UIImage imageNamed: self.state.abbreviation];
    self.stateNameLabel.text = self.state.name;
}

-(void)setState:(TRAState *)state{
    _state = state;
    [self updateViews];
}

@end
