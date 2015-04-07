//
//  TempDetailViewController.m
//  Glance*r
//
//  Created by Devin Eror on 3/26/15.
//  Copyright (c) 2015 Devin Eror. All rights reserved.
//

#import "TempDetailViewController.h"
#import <RKLink.h>
#import "UIImageView+AFNetworking.h"


@interface TempDetailViewController ()

@property (weak, nonatomic) IBOutlet UINavigationItem *subredditFullTitle;
@property (weak, nonatomic) IBOutlet UITextView *postTitle;
@property (weak, nonatomic) IBOutlet UIImageView *imageContent;
@property (weak, nonatomic) IBOutlet UILabel *userName;
@property (weak, nonatomic) IBOutlet UILabel *commentNumber;
@property (weak, nonatomic) IBOutlet UILabel *karmaNumber;
@property (nonatomic, strong) RKLink *link;

@end

@implementation TempDetailViewController

- (void)updateWithLink:(RKLink *)link {
    
    // importing link
//    self.link = link;
    
    // Navigation Title
    UINavigationItem *navTitle = [[UINavigationItem alloc] initWithTitle:link.subredditFullName];
    self.subredditFullTitle = navTitle;
    
    self.link = link;
}

- (void)viewWillAppear:(BOOL)animated {

    //Setting rounded corners.
//    self.layer.cornerRadius = 5;

    // Heading Information
    
    // Title Content
    self.postTitle.text = self.link.title;
    
    // Image Content
    self.imageContent.image = nil;
//    if (self.link.URL) {
    [self.imageContent setImageWithURL:self.link.URL];
//    } else if (self.link.media) {
//        [self.imageContent setImageWithURL:self.link.media];
//    }
    
    // Submitting User
    self.userName.text = self.link.author;
    
    // Comments
    self.commentNumber.text = [NSString stringWithFormat:@"%lu",(unsigned long)self.link.totalComments];
    
    // Karma
    self.karmaNumber.text = [NSString stringWithFormat:@"%lu",(unsigned long)self.link.upvotes];
    
//    UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemStop target:self action:@selector(dismiss)];
//    self.navigationItem.leftBarButtonItem = backButton;
    
    self.navigationItem.title = self.link.title;
    
}

- (IBAction)dismiss:(id)sender {
    [self dismissViewControllerAnimated:YES completion:^{
        nil;
    }];
}


@end
