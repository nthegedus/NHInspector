//
//  NSObject+Inspector.m
//
//  Created by Nathan Hegedus on 1/23/15.
//  Copyright (c) 2015 Nathan Hegedus. All rights reserved.
//

#import "NSObject+Inspector.h"
#import <objc/runtime.h>

@implementation NSObject (Inspector)

-(NSDictionary *)inspectObject {
    
    NSMutableDictionary *props = [NSMutableDictionary dictionary];
    unsigned int outCount, i;
    objc_property_t *properties = class_copyPropertyList([self class], &outCount);
    for (i = 0; i < outCount; i++) {
        objc_property_t property = properties[i];
        NSString *propertyName = [NSString stringWithFormat:@"%s", property_getName(property)];
        id propertyValue = [self valueForKey:(NSString *)propertyName];
        
        if ([propertyValue superclass] == [NSArray class]) {
            NSMutableArray *subPropertyArray = [NSMutableArray new];
            
            for (id property in propertyValue) {
                if ([property isKindOfClass:[NSString class]]) {
                    [subPropertyArray addObject:property];
                }else{
                    id inspectedObject = [property inspectObject];
                    [subPropertyArray addObject:inspectedObject];
                }
            }
            [props setObject:subPropertyArray forKey:propertyName];

        }else if ([propertyValue superclass] == [NSObject class]) {
            NSMutableArray *subPropertyArray = [NSMutableArray new];
            id inspectedObject = [propertyValue inspectObject];
            [subPropertyArray addObject:inspectedObject];
            [props setObject:subPropertyArray forKey:propertyName];
            
        }else if (propertyValue) {
            [props setObject:propertyValue forKey:propertyName];
        }
        
    }
    free(properties);
    return props;
    
}

-(void)inspectObjectLog{
    
    NSLog(@"%@", [self inspectObject]);
    
}

@end
