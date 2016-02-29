//
//  NSArray+Addition.m
//  games
//
//  Created by 官城云 on 15/7/8.
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
