//
//  Model.m
//  爱题库
//
//  Created by apple on 15/8/18.
//  Copyright (c) 2015年 apple. All rights reserved.
//

#import "Model.h"

@implementation Model

- (instancetype)initWithDictionary:(NSDictionary *)dict {
    if (self = [super init]) {
        self.imageUrl = dict[@"imgUrl"];
        self.title = dict[@"title"];
    }
    
    return self;
}
+ (instancetype)bannerWithDictionary:(NSDictionary *)dict {
    return [[[self class] alloc] initWithDictionary:dict];
}
@end
