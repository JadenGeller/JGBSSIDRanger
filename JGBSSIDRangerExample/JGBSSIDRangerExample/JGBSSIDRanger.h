//
//  JGBSSIDRanger.h
//  JGBSSIDRangerExample
//
//  Created by Jaden Geller on 2/25/14.
//  Copyright (c) 2014 Jaden Geller. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol JGBSSIDRangerDelegate <NSObject>

@optional
-(void)foundNewBSSID:(NSString*)BSSID;

@end

@interface JGBSSIDRanger : NSObject

@property (nonatomic, weak) id<JGBSSIDRangerDelegate> delegate;
@property (nonatomic) NSTimeInterval searchInterval;

@property (nonatomic) BOOL ranging;

-(void)clear;

+ (NSString *)currentBSSID;

@property (nonatomic, readonly) NSArray *BSSIDs;

@end
