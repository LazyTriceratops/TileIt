//
//  DetailPostViewController.m
//  
//
//  Created by Devin Eror on 3/12/15.
//
//

#import "DetailPostViewController.h"
#import "PostCollectionViewCell.h"
#import "RedditController.h"

@interface DetailPostViewController () <UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITextView *titleText;

@end

@implementation DetailPostViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)registerTableView:(UITableView *)tableView {
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *contentTitleCell = [tableView dequeueReusableCellWithIdentifier:@"titleCell"];
    UITableViewCell *contentImageCell = [tableView dequeueReusableCellWithIdentifier:@"imageCell"];
    UITableViewCell *contentMediaCell = [tableView dequeueReusableCellWithIdentifier:@"mediaCell"];
    UITableViewCell *contentCommentCell = [tableView dequeueReusableCellWithIdentifier:@"commentCell"];
    
    
    return contentTitleCell, contentImageCell, contentMediaCell, contentCommentCell;
}

- (void)updateWithLink:(RKLink *)link {
    
    self.titleText.text = link.title;
}


@end