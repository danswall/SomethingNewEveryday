//
//  SNEMasterViewController.h
//  Something New Everyday
//
//  Created by Dan Wall on 8/5/15.
//  Copyright (c) 2015 Dan Wall. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SNEMasterViewController : UITableViewController

@property (nonatomic, strong) NSManagedObjectContext *managedObjectContext;
@property (nonatomic, retain) NSFetchedResultsController *fetchedResultsController;

@end
