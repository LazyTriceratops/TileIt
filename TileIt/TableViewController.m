//
//  MainViewController.m
//  TileIt
//
//  Created by Devin Eror on 2/12/15.
//  Copyright (c) 2015 Devin Eror. All rights reserved.
//

#import "TableViewController.h"
#import "SubRedditTableViewCell.h"
#import <RedditKit/RedditKit.h>
#import "LinkDataSource.h"

#import "RedditController.h"

@interface TableViewController () <UITextFieldDelegate, UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) NSMutableDictionary *arraysOfLinks; // don't keep this here, testing only
@property (strong, nonatomic) NSMutableDictionary *dataSources; // don't keep this here, testing only

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setUpLinks];
    self.arraysOfLinks = [NSMutableDictionary new];
        self.dataSources = [NSMutableDictionary new];
//    for (NSString * str in [RedditController sharedInstance].VanillaSubReddits) {
//        [self.arraysOfLinks addObject:@[]];
//    }
}

- (void)registerTableView:(UITableView *)tableView {

}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return [RedditController sharedInstance].VanillaSubReddits.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    SubRedditTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"subRedditCell"];
    [cell subRedditContent];
//    RKLink *linkForCell = [self.arrayOfLinks objectAtIndex:indexPath.row];

    NSString * subreddit = [[RedditController sharedInstance].VanillaSubReddits objectAtIndex:indexPath.row];
    NSArray * currentLinks = self.arraysOfLinks[subreddit];
    
    LinkDataSource * dataSource = [LinkDataSource new];
    self.dataSources[subreddit] = dataSource;
    [dataSource registerCollectionView:cell.postCollectionView];
    dataSource.links = currentLinks;
    cell.postCollectionView.dataSource = dataSource;
    [cell.postCollectionView reloadData];
    
    cell.subRedditLabel.text = subreddit;
    
//    cell.textLabel.text = linkForCell.title;
    
//    [cell updateWithLink:linkForCell];
    
    cell.backgroundColor = [UIColor colorWithHue:0 saturation:0 brightness:0.94 alpha:1];
    
    if(!currentLinks) {
        [[RKClient sharedClient] linksInSubredditWithName:subreddit pagination:[RKPagination paginationWithLimit:25] completion:^(NSArray *collection, RKPagination *pagination, NSError *error) {
            
            self.arraysOfLinks[subreddit] = collection;
            [self.tableView reloadRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
        }];
    }
    
    return cell;
    
}

- (void)setUpLinks {
    
//    [[RKClient sharedClient] linksInSubredditWithName:@"funny" pagination:[RKPagination paginationWithLimit:50] completion:^(NSArray *collection, RKPagination *pagination, NSError *error) {
//        self.arrayOfLinks = collection;
//        [self.tableView reloadData];
//    }];
}


@end
