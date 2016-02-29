//
//  NSUserDefaults+NullAbleScalar.m
//  games
//
//  Created by DavidYang on 15/6/24.
//
//

#import "NSUserDefaults+NullAbleScalar.h"

@implementation NSUserDefaults(NullAbleScalar)

- (void)setSafeObject:(id)value forKey:(NSString *)defaultName {
    if (value == nil || value == [NSNull null] || value == NULL) {
        return;
    }
    
    [self setObject:value forKey:defaultName];
}

@end
