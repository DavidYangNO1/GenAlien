//
//  NSMutableDictionary+Addition.m
//  Alien
//
//  Created by DavidYang on 15/5/22.
//  Copyright (c) 2015年 hupu. All rights reserved.
//

#import "NSMutableDictionary+Addition.h"
#import "NSString+Addition.h"

@implementation NSMutableDictionary(Addition)

- (void)setSafeObject:(id)anObject forKey:(NSString *)key {
    if ([NSString strIsNilOrEmpty:key] || anObject == nil) {
        return;
    }
    
    [self setObject:anObject forKey:key];
}

- (id)objectSafeForKey:(id)key {
    if ([NSString strIsNilOrEmpty:key]) {
        return nil;
    }
    
    if ([self objectForKey:key] == NULL || [self objectForKey:key] == [NSNull null]) {
        return nil;
    }
    
    return [self objectForKey:key];
}

@end


@implementation NSDictionary(Addition)

- (id)objectSafeForKey:(id)key {
    if ([NSString strIsNilOrEmpty:key]) {
        return nil;
    }
    
    if ([self objectForKey:key] == NULL || [self objectForKey:key] == [NSNull null]) {
        return nil;
    }
    
    return [self objectForKey:key];
}

@end
