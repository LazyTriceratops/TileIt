//
//  TempDetailTableViewController.m
//  Glance*r
//
//  Created by Devin Eror on 3/26/15.
//  Copyright (c) 2015 Devin Eror. All rights reserved.
//

#import "TempDetailTableViewController.h"

@interface TempDetailTableViewController () <UITableViewDelegate, UITableViewDataSource>

@end

@implementation TempDetailTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    

//    UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemStop target:self action:@selector(dismiss)];
//    self.navigationItem.leftBarButtonItem = backButton;
    
    return cell;
}

//- (void)dismiss {
//    
//    [self dismissViewControllerAnimated:YES completion:^{
//        nil;
//    }];
//    
//}

@end
