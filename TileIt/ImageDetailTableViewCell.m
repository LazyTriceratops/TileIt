//
//  ImageDetailTableViewCell.m
//  Glance*r
//
//  Created by Devin Eror on 4/2/15.
//  Copyright (c) 2015 Devin Eror. All rights reserved.
//

#import "ImageDetailTableViewCell.h"
#import "UIImageView+AFNetworking.h"

@implementation ImageDetailTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)updateWithLink:(RKLink *)link {
    self.mainImage.image = nil;
    [self.mainImage setImageWithURL:link.media];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
