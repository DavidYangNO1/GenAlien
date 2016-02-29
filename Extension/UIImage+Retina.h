//
//  UIImage+Retina.h
//  games
//
//  Created by DavidYang on 15/6/26.
//
//

#import <Foundation/Foundation.h>

@interface UIImage(Retina)

/**
 *  @brief  通过imageWithContentsOfFile加装图片,图片不缓存，避免内存过高
 *
 *  @param picName  图片名称
 *  @param extenion 图片扩展名
 *
 *  @return UIImage
 */
+ (UIImage *)loadImageByName:(NSString *)picName withExtenion:(NSString *)extenion;

/**
 *  @brief  通过imageWithContentsOfFile加装图片,图片不缓存，避免内存过高
 *
 *  @param picName  图片名称
 *
 *  @return UIImage
 */
+ (UIImage *)loadImageByName:(NSString *)picName;


@end
