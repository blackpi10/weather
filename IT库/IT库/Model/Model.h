//
//  Model.h
//  IT库
//
//  Created by apple on 15/8/19.
//  Copyright (c) 2015年 apple. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Model : NSObject
@property (nonatomic, copy) NSString *imageUrl;
@property (nonatomic, copy) NSString *title;

- (instancetype)initWithDictionary:(NSDictionary *)dict;
+ (instancetype)bannerWithDictionary:(NSDictionary *)dict;
@end
