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
#import "PostCollectionViewCell.h"

#import "RedditController.h"

#import "DetailCollectionViewController.h"
#import "DetailWebViewController.h"

@interface TableViewController () <UITextFieldDelegate, UITableViewDelegate, UITableViewDataSource, UICollectionViewDelegate>

@property (strong, nonatomic) NSMutableDictionary *arraysOfLinks; // don't keep this here, testing only
@property (strong, nonatomic) NSMutableDictionary *dataSources; // don't keep this here, testing only
@property (strong, nonatomic) UIWebView *permalinkWebview;

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
    
    cell.selectionStyle = UITableViewCellSelectionStyleNone;

    NSString * subreddit = [[RedditController sharedInstance].VanillaSubReddits objectAtIndex:indexPath.row];
    NSArray * currentLinks = self.arraysOfLinks[subreddit];
    
    LinkDataSource * dataSource = [LinkDataSource new];
    self.dataSources[subreddit] = dataSource;
    [dataSource registerCollectionView:cell.postCollectionView withPresentingViewController:self];
    dataSource.links = currentLinks;
    cell.postCollectionView.dataSource = dataSource;
    [cell.postCollectionView reloadData];
    
    cell.postCollectionView.delegate = self;
    
    cell.subRedditLabel.text = subreddit;
    
    
    cell.backgroundColor = [UIColor colorWithHue:0 saturation:0 brightness:0.94 alpha:1];
    
    if(!currentLinks) {
        [[RKClient sharedClient] linksInSubredditWithName:subreddit pagination:[RKPagination paginationWithLimit:25] completion:^(NSArray *collection, RKPagination *pagination, NSError *error) {
            
            self.arraysOfLinks[subreddit] = collection;
            [self.tableView reloadRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationLeft];
        }];
    }
    
    return cell;
    
}

-(void)scrollViewDidScroll:(UIScrollView *)scrollView {
    // use this to make a pull to refresh.
    
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    
    UIStoryboard *detailStoryBoard = [UIStoryboard storyboardWithName:@"Detailed" bundle:nil];
    UINavigationController *nav = [detailStoryBoard instantiateInitialViewController];
    PostCollectionViewCell * collectionViewCell = nav.viewControllers[0];
//    collectionViewCell.self =
    
//    DetailCollectionViewController *detailCollectionViewController = [[DetailCollectionViewController alloc] initWithCollectionViewLayout:[[UICollectionViewFlowLayout alloc] init]];
    
    [self presentViewController:nav animated:YES completion:nil];
    
    // Failed UICollectionViewLayout strategy
//    UICollectionViewFlowLayout *detailedLayout = [UICollectionViewFlowLayout new];
//    detailedLayout.itemSize = CGSizeMake(self.view.frame.size.width, self.view.frame.size.height - 30);
//    detailedLayout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
//    [collectionView setCollectionViewLayout:detailedLayout animated:YES];
    
    // Failed lame strategy
//    DetailPostViewController *detailPostViewController = [DetailPostViewController new];
//    RKLink *link = self.links[indexPath.row];
//    [detailPostViewController updateWithLink:link];
//    [self.presentingViewController.navigationController pushViewController:detailPostViewController animated:YES];
    
    
    // Prehistoric WebView Strategy
    //    DetailWebViewController *detailedWebViewController = [DetailWebViewController new];
    //
    //    RKLink *link = self.links[indexPath.item];
    //
    //    [detailedWebViewController updateWithLink:link];
    //
    //    [self.presentingViewController.navigationController pushViewController:detailedWebViewController animated:YES];
}

- (void)setUpLinks {
    
}


@end
