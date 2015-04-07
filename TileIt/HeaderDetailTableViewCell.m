//
//  HeaderDetailTableViewCell.m
//  Glance*r
//
//  Created by Devin Eror on 4/2/15.
//  Copyright (c) 2015 Devin Eror. All rights reserved.
//

#import "HeaderDetailTableViewCell.h"

@interface HeaderDetailTableViewCell ()

@property (weak, nonatomic) IBOutlet UILabel *karmaLabel;
@property (weak, nonatomic) IBOutlet UILabel *commentLabel;
@property (weak, nonatomic) IBOutlet UILabel *nsfwLabel;
@property (weak, nonatomic) IBOutlet UILabel *stickiedLabel;
@property (weak, nonatomic) IBOutlet UILabel *userNameLabel;


@end

@implementation HeaderDetailTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)updateWithLink:(RKLink *)link {
    
    // UserName
    self.userNameLabel.text = [NSString stringWithFormat:@"%@", link.author];
    
    // Karma!
    self.karmaLabel.text = [NSString stringWithFormat:@"%ld", link.upvotes];
    
    // Comments
    self.commentLabel.text = [NSString stringWithFormat:@"ld", link.totalComments];
    
    // Tags
    if (!link.NSFW) {
        self.nsfwLabel.hidden = YES;
    }
    if (!link.stickied) {
        self.stickiedLabel.hidden = YES;
    }
    
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
