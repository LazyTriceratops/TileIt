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
    
    DetailTableViewCell *detailCell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    
    return detailCell;
}

- (void)updateWithLink:(RKLink *)link {
    
    
}

@end
