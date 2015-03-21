//
//  LinkDataSource.h
//  TileIt
//
//  Created by Devin Eror on 2/25/15.
//  Copyright (c) 2015 Devin Eror. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LinkDataSource : NSObject <UICollectionViewDataSource>

@property (nonatomic, strong) NSArray * links;

-(void)registerCollectionView:(UICollectionView *)collectionView withPresentingViewController:(UIViewController *)viewController;

@end
