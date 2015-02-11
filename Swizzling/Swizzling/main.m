//
//  main.m
//  Swizzling
//
//  Created by joshua may on 11/02/2015.
//  Copyright (c) 2015 notjosh, inc. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <objc/runtime.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDate *date = [NSDate date];

        NSDateFormatter *df = [NSDateFormatter new];
        df.dateStyle = NSDateFormatterLongStyle;
        df.timeStyle = NSDateFormatterLongStyle;

        NSLog(@"Date: %@", [df stringFromDate:date]);
    }
    return 0;
}


// useful use cases:
//  - tracking events (views appearing/disappearing) for analytics
//  - stubs/mocks for testing (lol)
//  - overriding 3rd party/system libs (!)