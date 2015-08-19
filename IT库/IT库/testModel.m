//
//  testModel.m
//  爱题库
//
//  Created by apple on 15/8/18.
//  Copyright (c) 2015年 apple. All rights reserved.
//

#import "testModel.h"
#import "Model.h"
@implementation testModel
+(NSArray *)testArray{
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"image" ofType:@"json"];
    NSData *data = [NSData dataWithContentsOfFile:path];
    NSArray *array = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:nil];
    NSMutableArray *modelArray = [NSMutableArray array];
    for (NSDictionary *dict in array) {
        Model *model = [Model bannerWithDictionary:dict];
        [modelArray addObject:model];
    }
    
    return modelArray;


}
@end
