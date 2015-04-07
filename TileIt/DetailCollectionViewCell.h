//
//  DetailCollectionViewCell.h
//  Glance*r
//
//  Created by Devin Eror on 3/22/15.
//  Copyright (c) 2015 Devin Eror. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DetailCollectionViewController.h"
#import <RKLink.h>

@interface DetailCollectionViewCell : UICollectionViewCell

- (void)updateWithLink:(RKLink *)link;

@end
