//
//  CardInfo.h
//  Something New Everyday
//
//  Created by Dan Wall on 8/9/15.
//  Copyright (c) 2015 Dan Wall. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class CardDetail;

@interface CardInfo : NSManagedObject

@property (nonatomic, retain) NSDate * dateCreated;
@property (nonatomic, retain) NSString * title;
@property (nonatomic, retain) NSNumber * fav;
@property (nonatomic, retain) CardDetail *detail;

@end
