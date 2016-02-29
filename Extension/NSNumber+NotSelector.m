//
//  NSNumber+NotSelector.h
//  games
//
//  Created by DavidYang on 15/6/19.
//
//

#import "NSNumber+NotSelector.h"

@implementation NSNumber(NotSelector)

- (NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector {
    NSMethodSignature *signature = [super methodSignatureForSelector:aSelector];
    if (!signature) {
        NSString *strNum = [NSString stringWithFormat:@"%@",self];
        signature = [strNum methodSignatureForSelector:aSelector];
        if (signature) {
            return signature;
        } else {
            return signature =[NSMethodSignature signatureWithObjCTypes:"@^v^c"];
        }
    } else {
        return signature;
    }
}

- (void)forwardInvocation:(NSInvocation *)anInvocation {
    if ([self respondsToSelector:[anInvocation selector]]) {
        [anInvocation invokeWithTarget:self];
    } else {
        NSString *strNum =  [NSString stringWithFormat:@"%@", self];
        if ([strNum respondsToSelector:[anInvocation selector]]) {
            [anInvocation invokeWithTarget:strNum];
        }
    }
}

@end
