//
//  SubRedditTableViewCell.m
//  TileIt
//
//  Created by Devin Eror on 2/14/15.
//  Copyright (c) 2015 Devin Eror. All rights reserved.
//

#import "SubRedditTableViewCell.h"
#import "TableViewController.h"
#import "LinkDataSource.h"

@interface SubRedditTableViewCell ()

@end

@implementation SubRedditTableViewCell

//-(UILabel *)subRedditLabel {
//    
//    self.SubRedditLabel.text = [];
//    return self;
//}

- (void)subRedditContent {
    if (!self.postCollectionView) {
        self.postCollectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(0, 30, 200, 100) collectionViewLayout:[[UICollectionViewFlowLayout alloc] init]];
        self.postCollectionView.backgroundColor = [UIColor whiteColor];
        [self addSubview:self.postCollectionView];
        
    }
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
