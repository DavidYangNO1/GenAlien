//
//  NSArray+Addition.m
//  games
//
//  Created by DavidYang on 15/7/8.
//
//

#import "NSArray+Addition.h"

@implementation NSArray (Addition)

- (id)safeObjectAtIndex:(NSUInteger)index {
    if (index >= self.count) {
        return nil;
    }
    return [self objectAtIndex:index];
}

@end
