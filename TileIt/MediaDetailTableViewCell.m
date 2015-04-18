//
//  MediaDetailTableViewCell.m
//  Glance*r
//
//  Created by Devin Eror on 4/2/15.
//  Copyright (c) 2015 Devin Eror. All rights reserved.
//

#import "MediaDetailTableViewCell.h"
#import "UIWebView+AFNetworking.h"

@implementation MediaDetailTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)updateWithLink:(RKLink *)link {
    NSURLRequest *request = [NSURLRequest requestWithURL:link.URL];
    [self.MainWebView loadRequest:request];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
