//
//  PostCollectionViewCell.h
//  TileIt
//
//  Created by Devin Eror on 2/14/15.
//  Copyright (c) 2015 Devin Eror. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RedditController.h"

@interface PostCollectionViewCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UILabel *label;

@property (weak, nonatomic) IBOutlet UIImageView *content;
@property (weak, nonatomic) IBOutlet UILabel *submittingUser;
@property (weak, nonatomic) IBOutlet UILabel *votes;
@property (weak, nonatomic) IBOutlet UIView *visitedCircle;
@property (weak, nonatomic) IBOutlet UILabel *datePosted;
@property (nonatomic, strong) UILabel *NSFW;
@property (weak, nonatomic) IBOutlet UIView *headerBar;
@property (weak, nonatomic) IBOutlet UILabel *commentLabel;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *labelConstraint;


- (void)updateWithLink:(RKLink *)link;

@end
