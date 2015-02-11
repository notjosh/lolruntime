//
//  main.m
//  Reflection
//
//  Created by joshua may on 11/02/2015.
//  Copyright (c) 2015 notjosh, inc. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <objc/runtime.h>

#import "Hat.h"

void dump_class(Class);
void dump_obj(id);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        dump_class(Hat.class);

        Hat *hat = Hat.new;
        hat.circumference = @42;
        hat.material = @"awkward hat spindles";

        dump_obj(hat);
    }
    return 0;
}

void dump_class(Class clazz) {
    unsigned int count;

    NSLog(@"Dumping class: %@", @(class_getName(clazz)));

    Ivar *ivarList = class_copyIvarList(clazz, &count);
    NSLog(@"ivars: %u", count);
    for (unsigned int i = 0; i < count; i++) {
        const char *name = ivar_getName(ivarList[i]);
        NSLog(@"  %@", @(name));
    }
    free(ivarList);

    objc_property_t *properties = class_copyPropertyList(clazz, &count);
    NSLog(@"properties: %u", count);
    for (unsigned int i = 0; i < count; i++) {
        const char *name = property_getName(properties[i]);
        NSLog(@"  %@", @(name));
    }
    free(properties);

    Method *methods = class_copyMethodList(clazz, &count);
    NSLog(@"methods: %u", count);
    for (int i = 0; i < count ; i++)
    {
        SEL selector = method_getName(methods[i]);
        const char *name = sel_getName(selector);
        NSLog(@"  %@", @(name));
    }
    free(methods);
}

void dump_obj(id obj) {
    NSLog(@"Dumping '%@' instance %p", [obj class], obj);

    unsigned int count;

    objc_property_t *properties = class_copyPropertyList([obj class], &count);
    for (unsigned int i = 0; i < count; i++) {
        objc_property_t property = properties[i];
        const char *name = property_getName(property);

        if (name) {
            id value = [obj valueForKey:@(name)];
            NSLog(@"  %@=%@", @(name), value);
        }
    }
    free(properties);

    // note: this won't check superclasses. :(
}