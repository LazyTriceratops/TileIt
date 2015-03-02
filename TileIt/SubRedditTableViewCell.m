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

@property (nonatomic, strong) LinkDataSource *dataSource;

@end

@implementation SubRedditTableViewCell

//-(UILabel *)subRedditLabel {
//    
//    self.SubRedditLabel.text = [];
//    return self;
//}

- (void)subRedditContent {
    if (!self.postCollectionView) {
        
        
    }
//    [self.postCollectionView setPagingEnabled:YES];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
