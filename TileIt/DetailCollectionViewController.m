//
//  DetailCollectionViewController.m
//  Glance*r
//
//  Created by Devin Eror on 3/22/15.
//  Copyright (c) 2015 Devin Eror. All rights reserved.
//

#import "DetailCollectionViewController.h"
#import "DetailCollectionViewCell.h"
#import <RedditKit/RedditKit.h>
#import "DetailDataSource.h"
#import "DetailTableViewCell.h"
#import "PostCollectionViewCell.h"

@interface DetailCollectionViewController () <UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout, UITableViewDelegate>

@property (strong, nonatomic) NSMutableDictionary *arraysOfLinks;

@end

@implementation DetailCollectionViewController

static NSString * const reuseIdentifier = @"Cell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Register cell classes
//    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    
    // Do any additional setup after loading the view.
    [self.collectionView reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {

    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {

    return 1;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    RKLink *link = [RKLink new];
    // set RKlink to self.links 
    
    cell.layer.cornerRadius = 15;
    DetailDataSource * dataSource = [DetailDataSource new];
    
    // Configure the cell
//    RKLink *link = self.links[indexPath.row];
//    
//    [cell updateWithLink:link];
    NSString * subreddit = [[RedditController sharedInstance].VanillaSubReddits objectAtIndex:indexPath.row];
    NSArray * currentLinks = self.arraysOfLinks[subreddit];

    if(!currentLinks) {
        [[RKClient sharedClient] linksInSubredditWithName:subreddit pagination:[RKPagination paginationWithLimit:25] completion:^(NSArray *collection, RKPagination *pagination, NSError *error) {
            
            self.arraysOfLinks[subreddit] = collection;
            [self.collectionView reloadItemsAtIndexPaths:@[indexPath]];
        }];
    }
    
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemStop target:self action:@selector(dismiss)];
    self.navigationItem.leftBarButtonItem = backButton;
    
    self.navigationItem.title = link.title;
    
    return cell;
}

- (void)dismiss {
    
    [self dismissViewControllerAnimated:YES completion:^{
        nil;
    }];
    
}

//- (void)updateWithReddit:(RKSubreddit *)subreddit {
//    //get first 25 links for subreddit
//    [[RKClient sharedClient] linksInSubredditWithName:subreddit pagination:[RKPagination paginationWithLimit:25] completion:^(NSArray *collection, RKPagination *pagination, NSError *error) {
//        
//        self.arraysOfLinks[subreddit] = collection;
//        [self.collectionView reloadRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationLeft];
//    }];
//    
//    //set self.links to above links.
//
//    
//}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    return CGSizeMake(self.view.frame.size.width - 10, self.view.frame.size.height - 20);
}

@end
