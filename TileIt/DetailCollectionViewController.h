//
//  DetailCollectionViewController.h
//  Glance*r
//
//  Created by Devin Eror on 3/22/15.
//  Copyright (c) 2015 Devin Eror. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <RKLink.h>

@interface DetailCollectionViewController : UICollectionViewController

- (void)updateWithLink:(RKLink *)link;

@end
