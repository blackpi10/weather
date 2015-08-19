//
//  UtilsDefine.h
//  爱题库
//
//  Created by apple on 15/8/18.
//  Copyright (c) 2015年 apple. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <objc/message.h>

#define DIE_SendMsg(target, action, ...) ((void(*)(id, SEL, ...))objc_msgSend)(target, action, ##__VA_ARGS__)

@interface UtilsDefine : NSObject

@end
