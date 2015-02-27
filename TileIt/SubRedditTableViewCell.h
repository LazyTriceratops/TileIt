//
//  SubRedditTableViewCell.h
//  TileIt
//
//  Created by Devin Eror on 2/14/15.
//  Copyright (c) 2015 Devin Eror. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SubRedditTableViewCell : UITableViewCell

@property (strong, nonatomic) IBOutlet UIView *SubRedditContent;
@property (weak, nonatomic) IBOutlet UILabel *subRedditLabel;
@property (strong, nonatomic) UICollectionView * postCollectionView;
- (void)subRedditContent;

@end
