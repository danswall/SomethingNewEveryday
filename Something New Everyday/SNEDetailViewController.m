//
//  SNEDetailViewController.m
//  Something New Everyday
//
//  Created by Dan Wall on 8/6/15.
//  Copyright (c) 2015 Dan Wall. All rights reserved.
//

#import "SNEDetailViewController.h"
#import "CardDetail.h"

@interface SNEDetailViewController ()

@property (weak, nonatomic) IBOutlet UILabel *detailTitle;
@property (weak, nonatomic) IBOutlet UILabel *dateCreated;
@property (weak, nonatomic) IBOutlet UITextView *body;
@property (weak, nonatomic) IBOutlet UIImageView *favImage;

@end

@implementation SNEDetailViewController

- (void) viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self updateUI];
}

- (void) updateUI
{
    // set title label
    self.detailTitle.text = self.info.title;
    
    // set date label
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateStyle:NSDateFormatterShortStyle];
    self.dateCreated.text = [formatter stringFromDate: self.info.dateCreated];
    
    // set body
    self.body.text = self.info.detail.body;
    
    // set fav image
    if ([self.info.fav isEqualToNumber:[NSNumber numberWithInt:0]]) {
        self.favImage.image = [UIImage imageNamed:@"notFav.png"];
    } else {
        self.favImage.image = [UIImage imageNamed:@"fav.png"];
    }
}

- (IBAction)saveButton:(id)sender
{
    self.info.detail.body = self.body.text;
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)favButton:(id)sender {
    if ([self.info.fav isEqualToNumber:[NSNumber numberWithInt:0]]) {
        self.info.fav = [NSNumber numberWithInt:1];
    } else {
        self.info.fav = [NSNumber numberWithInt:0];
    }
    [self updateUI];
}

@end
