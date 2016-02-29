//
//  NSMutableArray+Addition.h
//  Alien
//
//  Created by DavidYang on 15/5/22.
//  Copyright (c) 2015年 hupu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableArray(Addition)

- (void)insertSafeObject:(id)anObject atIndex:(NSUInteger)index;

- (void)addSafeObject:(id)object;

- (void)removeSafeObjectAtIndex:(NSUInteger)index;

- (void)replaceSafeObjectAtIndex:(NSUInteger)index withObject:(id)anObject;

- (void)exchangeSafeObjectAtIndex:(NSUInteger)idx1 withObjectAtIndex:(NSUInteger)idx2;

- (id)safeObjectAtIndex:(NSUInteger)index;

@end
