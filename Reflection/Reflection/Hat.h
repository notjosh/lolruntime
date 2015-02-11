//
//  Hat.h
//  Reflection
//
//  Created by joshua may on 11/02/2015.
//  Copyright (c) 2015 notjosh, inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Hat : NSObject

@property (nonatomic, copy) NSString *material;
@property (nonatomic, copy) NSNumber *circumference;

- (BOOL)goesWellWithShirt:(NSString *)shirt;

@end
