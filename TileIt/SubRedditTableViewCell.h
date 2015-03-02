//
//  SubRedditTableViewCell.h
//  TileIt
//
//  Created by Devin Eror on 2/14/15.
//  Copyright (c) 2015 Devin Eror. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SubRedditTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *subRedditLabel;
@property (strong, nonatomic) IBOutlet UICollectionView * postCollectionView;
- (void)subRedditContent;

@end
