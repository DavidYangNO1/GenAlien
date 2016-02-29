//
//  NSNull+InternalNullExtention.m
//  games
//
//  Created by DavidYang on 15/6/19.
//
//

#import "NSNull+InternalNullExtention.h"

@implementation NSNull(InternalNullExtention)

- (NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector {
    NSMethodSignature *signature = [super methodSignatureForSelector:aSelector];
    if (!signature) {
        return signature = [NSMethodSignature signatureWithObjCTypes:"@^v^c"];
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

