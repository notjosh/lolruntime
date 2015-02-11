//
//  NSDate+Method.m
//  Categories
//
//  Created by joshua may on 11/02/2015.
//  Copyright (c) 2015 notjosh, inc. All rights reserved.
//

#import "NSDate+Method.h"

@implementation NSDate (Method)

- (NSString *)calculateMoonPhase
{
    // voodoo.
    switch (arc4random_uniform(4)) {
        case 0:
            return @"First quarter";
        case 1:
            return @"Full moon";
        case 2:
            return @"I guess it's a half. Whatever.";
        case 3:
            return @"Wait where is the moon??????";
    }

    return nil;
}

@end
