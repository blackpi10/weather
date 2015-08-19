//
//  HotCompanyCollectionViewCell.m
//  IT库
//
//  Created by apple on 15/8/19.
//  Copyright (c) 2015年 apple. All rights reserved.
//

#import "HotCompanyCollectionViewCell.h"
#import "Masonry.h"
@implementation HotCompanyCollectionViewCell
-(instancetype)initWithFrame:(CGRect)frame{
    
    self = [super initWithFrame:frame];
    if (self) {
        _imageView = [UIImageView new];
        _imageView.image = [UIImage imageNamed:@"16.jpg"];
        _imageView.layer.cornerRadius = 31;
        _imageView.layer.masksToBounds = YES;
        _imageView.backgroundColor = [UIColor yellowColor];
        
        [self.contentView addSubview:_imageView];
        
        [_imageView mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.edges.equalTo(self.contentView);
        }];
        
    }
    
    return self;
    
}
@end
