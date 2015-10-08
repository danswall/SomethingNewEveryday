//
//  SNEAppDelegate.h
//  Something New Everyday
//
//  Created by Dan Wall on 7/21/15.
//  Copyright (c) 2015 Dan Wall. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SNEAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
