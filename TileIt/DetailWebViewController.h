//
//  DetailWebViewController.h
//  TileIt
//
//  Created by Devin Eror on 3/18/15.
//  Copyright (c) 2015 Devin Eror. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>
#import "PostCollectionViewCell.h"


@interface DetailWebViewController : UIViewController

- (void)updateWithLink:(RKLink *)link;

@end
