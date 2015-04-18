//
//  ImageDetailTableViewCell.h
//  Glance*r
//
//  Created by Devin Eror on 4/2/15.
//  Copyright (c) 2015 Devin Eror. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <RedditKit/RedditKit.h>

@interface ImageDetailTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *mainImage;

-(void)updateWithLink:(RKLink *)link;

@end
