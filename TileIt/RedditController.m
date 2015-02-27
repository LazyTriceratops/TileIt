//
//  NetworkController.m
//  TileIt
//
//  Created by Devin Eror on 2/12/15.
//  Copyright (c) 2015 Devin Eror. All rights reserved.
//



// Notes:
// need setup methods that you'll run in the sharedInstance
// use those setup methods to set subreddit array and links for subreddit array as public properties
// have an 'update links' array that grabs new content and sends an NSNotification when it's done
// in table or collection views, call that update links method when you're almost done scrolling
// in your table or collection views, insert data when it receives an NSNotificatio that new data has loaded


#import "RedditController.h"

@implementation RedditController

+ (RedditController *)sharedInstance {
    static RedditController *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[RedditController alloc] init];
        
    });
    return sharedInstance;
}

- (NSArray *)VanillaSubReddits {
    
    return @[@"announcements",
                @"art",
                @"askreddit",
                @"askscience",
                @"aww",
                @"blog",
                @"books",
                @"creepy",
                @"dataisbeautiful",
                @"diy",
                @"documentaries",
                @"earthporn",
                @"explainlikeimfive",
                @"fitness",
                @"food",
                @"funny",
                @"futurology",
                @"gadgets",
                @"gaming",
                @"getmotivated",
                @"gifs",
                @"history",
                @"iama",
                @"internetisbeautiful",
                @"jokes",
                @"lifeprotips",
                @"listentothis",
                @"mildlyinteresting",
                @"movies",
                @"music",
                @"news",
                @"nosleep",
                @"nottheonion",
                @"oldschoolcool",
                @"personalfinance",
                @"philosophy",
                @"photoshopbattles",
                @"pics",
                @"science",
                @"showerthoughts",
                @"space",
                @"sports",
                @"television",
                @"tifu",
                @"todayilearned",
                @"twoxchromosomes",
                @"upliftingnews",
                @"videos",
                @"worldnews",
                @"writingprompts"];

}

//- (NSArray *)linksForSubreddit:(NSString *)subredditName {
//    
////    [[RKClient sharedClient] subredditWithName:subredditName completion:^(id object, NSError *error) {
////        NSLog(@"We got a subreddit!");
////        
////        RKSubreddit *subreddit = (RKSubreddit *)object;
////        
////        NSLog(@"%@", subreddit.name);
////        
////        NSMutableArray *links = [NSMutableArray new];
////        
////    }];
//    
//}

@end
