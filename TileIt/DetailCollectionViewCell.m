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
    return 6;
}

// Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
// Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSString *cellIdentifier;
    
    if (indexPath.row == 0) {
        cellIdentifier = @"HeaderCell";
    } else if (indexPath.row == 1){
        cellIdentifier = @"TitleCell";
    } else if (indexPath.row == 2) {
        cellIdentifier = @"SelfTextCell";
    } else if (indexPath.row == 3) {
        cellIdentifier = @"ImageCell";
    } else if (indexPath.row == 4) {
        cellIdentifier = @"MediaCell";
    } else if (indexPath.row == 5) {
        cellIdentifier = @"CommentCell";
    }
    
    UITableViewCell *detailedCells = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];

    return detailedCells;
}

- (void)updateWithLink:(RKLink *)link {
    
}

@end
