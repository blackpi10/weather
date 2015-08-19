//
//  CustomCollectionViewCell.m
//  IT库
//
//  Created by apple on 15/8/19.
//  Copyright (c) 2015年 apple. All rights reserved.
//

#import "CustomCollectionViewCell.h"

@implementation CustomCollectionViewCell
-(instancetype)initWithFrame:(CGRect)frame{
    
    self = [super initWithFrame:frame];
    if (self) {
        
        CGRect rect = frame;
        rect.origin.x = 0;
        _imageView = [[UIImageView alloc] initWithFrame:rect];
        [self.contentView addSubview:_imageView];
        
    }
    
    return self;
}
@end
