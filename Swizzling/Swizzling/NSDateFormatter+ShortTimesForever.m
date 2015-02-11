//
//  NSDateFormatter+ShortTimesForever.m
//  Swizzling
//
//  Created by joshua may on 11/02/2015.
//  Copyright (c) 2015 notjosh, inc. All rights reserved.
//

#import "NSDateFormatter+ShortTimesForever.h"

#import <objc/runtime.h>

@implementation NSDateFormatter (ShortTimesForever)

//+ (void)load {
//    static dispatch_once_t onceToken;
//    dispatch_once(&onceToken, ^{
//        Class class = [self class];
//
//        SEL originalSelector = @selector(stringFromDate:);
//        SEL swizzledSelector = @selector(xxx_stringFromDate:);
//
//        Method originalMethod = class_getInstanceMethod(class, originalSelector);
//        Method swizzledMethod = class_getInstanceMethod(class, swizzledSelector);
//
//        BOOL didAddMethod =
//        class_addMethod(class,
//                        originalSelector,
//                        method_getImplementation(swizzledMethod),
//                        method_getTypeEncoding(swizzledMethod));
//
//        if (didAddMethod) {
//            class_replaceMethod(class,
//                                swizzledSelector,
//                                method_getImplementation(originalMethod),
//                                method_getTypeEncoding(originalMethod));
//        } else {
//            method_exchangeImplementations(originalMethod, swizzledMethod);
//        }
//    });
//}

#pragma mark - Method Swizzling

- (NSString *)xxx_stringFromDate:(NSDate *)date {
    self.dateStyle = NSDateFormatterShortStyle;
    self.timeStyle = NSDateFormatterShortStyle;

    return [self xxx_stringFromDate:date];
}

@end
