//
//  CardDetail.h
//  Something New Everyday
//
//  Created by Dan Wall on 8/6/15.
//  Copyright (c) 2015 Dan Wall. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class CardInfo;

@interface CardDetail : NSManagedObject

@property (nonatomic, retain) NSString * body;
@property (nonatomic, retain) CardInfo *info;

@end
