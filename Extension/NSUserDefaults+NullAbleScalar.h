//
//  NSUserDefaults+NullAbleScalar.h
//  games
//
//  Created by DavidYang on 15/6/24.
//
//

#import <Foundation/Foundation.h>

@interface NSUserDefaults(NullAbleScalar)

- (void)setSafeObject:(id)value forKey:(NSString *)defaultName;

@end
