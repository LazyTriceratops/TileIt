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

@end

@implementation TempDetailViewController

-(void)viewDidLoad {
    
}

- (void)updateWithLink:(RKLink *)link {
    
    // Navigation Title
    UINavigationItem *navTitle = [[UINavigationItem alloc] initWithTitle:link.subredditFullName];
    self.subredditFullTitle = navTitle;
    
    //Setting rounded corners.
//    self.layer.cornerRadius = 5;

    // Heading Information
    
    // Title Content
    self.postTitle.text = link.title;
    
    // Image Content
    self.imageContent.image = nil;
//    if (link.URL) {
        [self.imageContent setImageWithURL:link.URL];
//    } else if (link.media) {
//        [self.imageContent setImageWithURL:link.media];
//    }
    
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemStop target:self action:@selector(dismiss)];
    self.navigationItem.leftBarButtonItem = backButton;
    
    self.navigationItem.title = link.title;
    
}

- (void)dismiss {
    [self dismissViewControllerAnimated:YES completion:^{
        nil;
    }];
}


@end
