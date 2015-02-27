//
//  PostCollectionViewCell.h
//  TileIt
//
//  Created by Devin Eror on 2/14/15.
//  Copyright (c) 2015 Devin Eror. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PostCollectionViewCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UIWebView *content;

@end
