//
//  NetworkController.h
//  TileIt
//
//  Created by Devin Eror on 2/12/15.
//  Copyright (c) 2015 Devin Eror. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <RedditKit/RedditKit.h>

@interface RedditController : NSObject

+ (RedditController *)sharedInstance;

// Will return an array of RKLinks for this subreddit
- (NSArray *)linksForSubreddit:(RKSubreddit *)subReddit;

- (NSArray *)VanillaSubReddits;
@end
