//
//  SNEAddViewController.m
//  Something New Everyday
//
//  Created by Dan Wall on 8/8/15.
//  Copyright (c) 2015 Dan Wall. All rights reserved.
//

#import "SNEAddViewController.h"
#import "CardDetail.h"

@interface SNEAddViewController ()

@property (weak, nonatomic) IBOutlet UITextView *addTitle;
@property (weak, nonatomic) IBOutlet UILabel *dateCreatedLabel;
@property (weak, nonatomic) IBOutlet UITextView *body;

@property (nonatomic, strong) NSDate *dateCreated;

@end

@implementation SNEAddViewController

@synthesize managedObjectContext;

- (void) viewDidLoad
{
    [super viewDidLoad];
    
    id delegate = [[UIApplication sharedApplication] delegate];
    self.managedObjectContext = [delegate managedObjectContext];
}

- (void) viewWillAppear:(BOOL)animated
{
    self.dateCreated = [NSDate date];
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateStyle:NSDateFormatterShortStyle];
    self.dateCreatedLabel.text = [formatter stringFromDate: self.dateCreated];
}

- (IBAction)saveButton:(id)sender
{
    // create new info card
    CardInfo *info = [NSEntityDescription insertNewObjectForEntityForName:@"CardInfo"
                                                   inManagedObjectContext:managedObjectContext];
    info.title = self.addTitle.text;
    info.dateCreated = self.dateCreated;
    info.fav = [NSNumber numberWithInt:0];
    
    CardDetail *detail = [NSEntityDescription insertNewObjectForEntityForName:@"CardDetail"
                                                   inManagedObjectContext:managedObjectContext];
    detail.body = self.body.text;
    detail.info = info;
    info.detail = detail;
    
     
    // add it to model
    NSError *error;
    if (![managedObjectContext save:&error]){
        NSLog(@"Could not save %@", [error localizedDescription]);
    }
    
    [self.navigationController popViewControllerAnimated:YES];
}

@end
