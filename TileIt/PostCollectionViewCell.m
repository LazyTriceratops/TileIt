//
//  PostCollectionViewCell.m
//  TileIt
//
//  Created by Devin Eror on 2/14/15.
//  Copyright (c) 2015 Devin Eror. All rights reserved.
//

#import "PostCollectionViewCell.h"
#import "UIImageView+AFNetworking.h"
#import "DetailPostViewController.h"

@interface PostCollectionViewCell () <UIWebViewDelegate>

@end

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
//        self.visitedCircle.hidden;
    }
    
    //Reddit Post Title
    self.label.text = link.title;
    
    //Reddit Post Image Content
    self.content.image = nil;
    [self.content setImageWithURL:link.thumbnailURL];
    
    
    //Reddit Post Heading Content
    self.submittingUser.text = link.author;
    [self.datePosted setHidden:YES];
//    self.datePosted.text = [NSString stringWithFormat:@"%@", link.created];
    
    //Total Upvotes
    self.votes.text = [NSString stringWithFormat:@"%lu",(unsigned long)link.upvotes];
    
    //Total Comments
    self.commentLabel.text = [NSString stringWithFormat:@"%lu", (unsigned long)link.totalComments];
    
    //Block NSFW posts
    if (link.NSFW) {
        [self.content setHidden:YES];
        self.NSFW.frame = self.content.frame;
        self.content.backgroundColor = [UIColor colorWithHue:0.62 saturation:0.14 brightness:0.46 alpha:1];
        self.NSFW.text = @"NSFW";
        self.NSFW.font = [UIFont fontWithName:@"Helvetica" size:18];
    };
    
    //Sticked posts
    if (link.stickied) {
        self.headerBar.backgroundColor = [UIColor colorWithHue:0.26 saturation:0.46 brightness:0.78 alpha:1];
    }
    if (!link.stickied) {
        self.headerBar.backgroundColor = [UIColor colorWithHue:0 saturation:0 brightness:0.69 alpha:1];
    }
    
    // update any other cell information from the link here
    
}

- (void)applyLayoutAttributes:(UICollectionViewLayoutAttributes *)layoutAttributes {
    
}

- (void)didTransitionFromLayout:(UICollectionViewLayout *)oldLayout toLayout:(UICollectionViewLayout *)newLayout {
    
    DetailPostViewController *detailPostViewController = [DetailPostViewController new];
    RKLink *link = link;
    
    
}

@end
