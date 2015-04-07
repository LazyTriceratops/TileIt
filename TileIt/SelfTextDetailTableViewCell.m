//
//  SelfTextDetailTableViewCell.m
//  Glance*r
//
//  Created by Devin Eror on 4/2/15.
//  Copyright (c) 2015 Devin Eror. All rights reserved.
//

#import "SelfTextDetailTableViewCell.h"

@interface SelfTextDetailTableViewCell ()
@property (weak, nonatomic) IBOutlet UITextView *selfTextView;

@end

@implementation SelfTextDetailTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)updateWithLink:(RKLink *)link {
    
    self.selfTextView.text = link.selfText;
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
