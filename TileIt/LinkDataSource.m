//
//  LinkDataSource.m
//  TileIt
//
//  Created by Devin Eror on 2/25/15.
//  Copyright (c) 2015 Devin Eror. All rights reserved.
//

#import "LinkDataSource.h"
#import "PostCollectionViewCell.h"
#import <RedditKit/RedditKit.h>
#import <UIImageView+AFNetworking.h>
#import "DetailWebViewController.h"

#import "TempDetailViewController.h"

@interface LinkDataSource () <UICollectionViewDelegate>

@property (strong,nonatomic) UIViewController *presentingViewController;

@end

@implementation LinkDataSource

-(void)registerCollectionView:(UICollectionView *)collectionView withPresentingViewController:(UIViewController *)viewController {
    [collectionView registerNib:[UINib nibWithNibName:@"PostCollectionViewCell" bundle:nil] forCellWithReuseIdentifier:@"cell"];
    
    self.presentingViewController = viewController;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.links.count;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    PostCollectionViewCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    
    RKLink * link = self.links[indexPath.row];
    
    [cell updateWithLink:link];

    return cell;
}

@end
