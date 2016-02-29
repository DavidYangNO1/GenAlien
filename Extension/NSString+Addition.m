//
//  NSString+Addition.m
//  Alien
//
//  Created by DavidYang on 15/5/22.
//  Copyright (c) 2015年 hupu. All rights reserved.
//

#import "NSString+Addition.h"

@implementation NSString(Addition)

+ (BOOL)strIsNilOrEmpty:(NSString *)str {
    if (str == nil || [str isEqual:[NSNull null]] || (str != nil && [str isEqualToString:@""])) {
        return YES;
    }
    return NO;
}

+ (NSString *)getSafeStr:(NSString *)str {
    if ([self strIsNilOrEmpty:str]) {
        return @"";
    }
    
    return str;
}

+ (NSString *)strTrimSpace:(NSString *)text {
    if (![NSString strIsNilOrEmpty:text]) {
        NSMutableString *result = [NSMutableString string];
        [result setString:[text stringByReplacingOccurrencesOfString:@" " withString:@""]];
        [result stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
        return result;
    }
    return nil;
}

+ (NSString *)generateUUIDString {
    CFUUIDRef uuidref = CFUUIDCreate(kCFAllocatorDefault);
    
    NSString  * uuidString = CFBridgingRelease(CFUUIDCreateString(kCFAllocatorDefault, uuidref));
    
    CFRelease(uuidref);
    
    return uuidString;
}


- (NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector {
    NSMethodSignature *signature = [super methodSignatureForSelector:aSelector];
    if (!signature) {
       return signature =[NSMethodSignature signatureWithObjCTypes:"@^v^c"];
    } else {
        return signature;
    }
}

- (void)forwardInvocation:(NSInvocation *)anInvocation {
    if ([self respondsToSelector:[anInvocation selector]]) {
        [anInvocation invokeWithTarget:self];
    }
}

@end
