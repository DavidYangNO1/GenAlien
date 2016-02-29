//
//  NSString+Addition.h
//  Alien
//
//  Created by DavidYang on 15/5/22.
//  Copyright (c) 2015年 hupu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString(Addition)


/**
 *  @brief  判断字符串是否为空或者为nil,NULL
 *
 *  @param str 字符串
 *
 *  @return true 为空或者nil false 不为空,nil
 */
+ (BOOL)strIsNilOrEmpty:(NSString *)str;


+ (NSString *)getSafeStr:(NSString *)str;

/**
 *  @brief  去掉字符串空格
 *
 *  @param text 字符串
 *
 *  @return 返回去掉字符串空格
 */
+ (NSString *)strTrimSpace:(NSString *)text;


/**
 *  @brief  获取全局唯一id
 *
 *  @return 局唯一id
 */
+ (NSString *)generateUUIDString;

@end
