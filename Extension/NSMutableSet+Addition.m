//
//  NSMutableSet+Addition.m
//  Alien
//
//  Created by DavidYang on 15/5/22.
//  Copyright (c) 2015年 hupu. All rights reserved.
//

#import "NSMutableSet+Addition.h"

@implementation NSMutableSet(Addition)

- (void)addSafeObject:(id)object {
    if (object == nil || object == [NSNull null] || object == NULL) {
        return;
    }
    [self addObject:object];
}

@end
