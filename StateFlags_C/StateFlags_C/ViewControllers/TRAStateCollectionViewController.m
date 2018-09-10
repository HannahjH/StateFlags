//
//  TRAStateCollectionViewController.m
//  StateFlags_C
//
//  Created by DevMountain on 9/10/18.
//  Copyright © 2018 trevorAdcock. All rights reserved.
//

#import "TRAStateCollectionViewController.h"
#import "TRAStateController.h"
#import "TRAStateCollectionViewCell.h"
#import "TRAState.h"

@interface TRAStateCollectionViewController ()

@end

@implementation TRAStateCollectionViewController

static NSString * const reuseIdentifier = @"stateCell";

- (void)viewDidLoad {
    [super viewDidLoad];

}

#pragma mark <UICollectionViewDataSource>

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {

    return [[TRAStateController shared].states count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    TRAStateCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    TRAState *state = [TRAStateController shared].states[indexPath.row];
    cell.state = state;
    return cell;
}

@end
