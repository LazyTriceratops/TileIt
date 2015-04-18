//
//  DetailCollectionViewCell.m
//  Glance*r
//
//  Created by Devin Eror on 3/22/15.
//  Copyright (c) 2015 Devin Eror. All rights reserved.
//

#import "DetailCollectionViewCell.h"
#import "DetailTableViewCell.h"

#import "HeaderDetailTableViewCell.h"
#import "TitleDetailTableViewCell.h"
#import "SelfTextDetailTableViewCell.h"
#import "ImageDetailTableViewCell.h"
#import "MediaDetailTableViewCell.h"
#import "CommentDetailTableViewCell.h"

@interface DetailCollectionViewCell () <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic,strong) NSString *link;

@end

@implementation DetailCollectionViewCell

- (void)ViewDidLoad {
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 0;
}

// Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
// Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    HeaderDetailTableViewCell *headerCell = [tableView dequeueReusableCellWithIdentifier:@"HeaderCell"];
    TitleDetailTableViewCell *titleCell = [tableView dequeueReusableCellWithIdentifier:@"TitleCell"];
    SelfTextDetailTableViewCell *selfTextCell = [tableView dequeueReusableCellWithIdentifier:@"SelfTextCell"];
    ImageDetailTableViewCell *imageCell = [tableView dequeueReusableCellWithIdentifier:@"ImageCell"];
    MediaDetailTableViewCell *mediaCell = [tableView dequeueReusableCellWithIdentifier:@"MediaCell"];
    CommentDetailTableViewCell *commentCell = [tableView dequeueReusableCellWithIdentifier:@"CommentCell"];
    
    RKLink *link = self.link;
    
    if (link.title) {
        return titleCell;
    }
    if (link.isImageLink) {
        return imageCell;
    }

    return headerCell;
}

- (void)updateWithLink:(RKLink *)link {
    
    
}

@end
