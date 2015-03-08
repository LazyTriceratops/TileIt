//
//  PostCollectionViewCell.m
//  TileIt
//
//  Created by Devin Eror on 2/14/15.
//  Copyright (c) 2015 Devin Eror. All rights reserved.
//

#import "PostCollectionViewCell.h"
#import "UIImageView+AFNetworking.h"

@implementation PostCollectionViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)updateWithLink:(RKLink *)link {
    //Setting rounded corners.
    self.layer.cornerRadius = 5;
    
    //Update circle:
    self.visitedCircle.layer.cornerRadius = 7;
    if (link.visited) {
        self.visitedCircle.hidden;
    }
    
    self.label.text = link.title;
    
    self.content.image = nil;
    
    [self.content setImageWithURL:link.thumbnailURL];
    
    self.submittingUser.text = link.author;
    self.votes.text = [NSString stringWithFormat:@"%lu",(unsigned long)link.upvotes];
    
    // update any other cell information from the link here
}

@end
