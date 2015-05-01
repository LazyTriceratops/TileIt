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

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Register cell classes
//    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"DetailCollectionViewCell"];
    
    // Do any additional setup after loading the view.
//    [self.collectionView reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark <UICollectionViewDataSource>

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    
    return 5;
//    return self.arraysOfLinks.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"detailTableViewCell" forIndexPath:indexPath];
    
    cell.layer.cornerRadius = 15;
    
//    [DetailCollectionViewCell updateWithLink:link];
    
    return cell;
}

- (void)updateWithLink:(RKLink *)link {
    
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemStop target:self action:@selector(dismiss)];
    self.navigationItem.leftBarButtonItem = backButton;
    
    self.navigationItem.title = link.subreddit;
    
    
    
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
