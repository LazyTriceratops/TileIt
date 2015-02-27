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
    
    return @[@"Announcements",
                @"Art",
                @"AskReddit",
                @"AskScience",
                @"Aww",
                @"Blog",
                @"Books",
                @"Creepy",
                @"DataIsBeautiful",
                @"Diy",
                @"Documentaries",
                @"EarthPorn",
                @"ExplainLikeImFive",
                @"Fitness",
                @"Food",
                @"Funny",
                @"Futurology",
                @"Gadgets",
                @"Gaming",
                @"GetMotivated",
                @"Gifs",
                @"History",
                @"IAmA",
                @"InternetIsBeautiful",
                @"Jokes",
                @"LifeProTips",
                @"ListenToThis",
                @"MildlyInteresting",
                @"Movies",
                @"Music",
                @"News",
                @"NoSleep",
                @"NotTheOnion",
                @"OldSchoolCool",
                @"PersonalFinance",
                @"Philosophy",
                @"PhotoShopBattles",
                @"Pics",
                @"Science",
                @"ShowerThoughts",
                @"Space",
                @"Sports",
                @"Television",
                @"TIFU",
                @"TodayILearned",
                @"TwoXChromosomes",
                @"UpLiftingNews",
                @"Videos",
                @"WorldNews",
                @"WritingPrompts"];

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
