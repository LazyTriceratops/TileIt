//
//  TitleDetailTableViewCell.m
//  Glance*r
//
//  Created by Devin Eror on 4/2/15.
//  Copyright (c) 2015 Devin Eror. All rights reserved.
//

#import "TitleDetailTableViewCell.h"

@interface TitleDetailTableViewCell ()

@property (weak, nonatomic) IBOutlet UITextView *titleTextField;

@end

@implementation TitleDetailTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)updateWithLink:(RKLink *)link {
    
    self.titleTextField.text = link.title;
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
