//
//  UIImage+Retina.m
//  games
//
//  Created by DavidYang on 15/6/26.
//
//

#import "UIImage+Retina.h"
#import "AppShare.h"

@implementation UIImage(Retina)

+ (UIImage *)loadImageByName:(NSString *)picName withExtenion:(NSString *)extenion {
    NSString *fileName = nil;
    
    if ([UIScreen mainScreen].scale == 2.0) {
        fileName = [NSString stringWithFormat:@"%@@2x.%@", picName, extenion];
    } else if ([UIScreen mainScreen].scale == 3.0) {
        fileName =[NSString stringWithFormat:@"%@@3x.%@", picName, extenion];
    } else {
        fileName = [NSString stringWithFormat:@"%@.%@", picName, extenion];
    }
    
    NSString *path = [NSString stringWithFormat:@"%@/%@",[[NSBundle mainBundle] resourcePath], fileName];
    UIImage *image = [UIImage imageWithContentsOfFile:path];

    if (image) {
        return image;
    } else {
        //可能没有@3x图片，先转换为@2x
        fileName = [NSString stringWithFormat:@"%@@2x.%@", picName, extenion];
        path = [NSString stringWithFormat:@"%@/%@", [[NSBundle mainBundle] resourcePath], fileName];
        image = [UIImage imageWithContentsOfFile:path];
        
        if (image) {
            return image;
        } else {
            return [UIImage imageNamed:[NSString stringWithFormat:@"%@.%@",picName,extenion]];
        }
    }
}

+ (UIImage *)loadImageByName:(NSString *)picName {
   return  [self loadImageByName:picName withExtenion:@"png"];
}

@end
