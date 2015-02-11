//
//  NSDate+LolRuntime.m
//  Categories
//
//  Created by joshua may on 11/02/2015.
//  Copyright (c) 2015 notjosh, inc. All rights reserved.
//

#import "NSDate+Property.h"

@implementation NSDate (Property)

@dynamic alternateRepresentation;

@end



//@implementation NSDate (Property)
//
//- (void)setAlternateRepresentation:(NSString *)alternateRepresentation
//{
//    _alternateRepresentation = alternateRepresentation.copy;
//}
//
//- (NSString *)alternateRepresentation
//{
//    return _alternateRepresentation;
//}
//
//@end



//#import <objc/runtime.h>
//
//static void * PropertyKeyAlternateRepresentation = &PropertyKeyAlternateRepresentation;
//
//@implementation NSDate (Property)
//
//- (void)setAlternateRepresentation:(NSString *)alternateRepresentation
//{
//    objc_setAssociatedObject(self, PropertyKeyAlternateRepresentation, alternateRepresentation, OBJC_ASSOCIATION_COPY);
//}
//
//- (NSString *)alternateRepresentation
//{
//    return objc_getAssociatedObject(self, PropertyKeyAlternateRepresentation);
//}
//
//@end
