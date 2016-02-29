//
//  NSMutableDictionary+Addition.h
//  Alien
//
//  Created by DavidYang on 15/5/22.
//  Copyright (c) 2015年 hupu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableDictionary(Addition)

- (void)setSafeObject:(id)anObject forKey:(NSString *)key;

- (id)objectSafeForKey:(id)key;

@end


@interface NSDictionary(Addition)

- (id)objectSafeForKey:(id)key;

@end