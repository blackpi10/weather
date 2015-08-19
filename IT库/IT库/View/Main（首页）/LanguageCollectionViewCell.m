//
//  LanguageCollectionViewCell.m
//  IT库
//
//  Created by apple on 15/8/19.
//  Copyright (c) 2015年 apple. All rights reserved.
//

#import "LanguageCollectionViewCell.h"
#import "Masonry.h"
@implementation LanguageCollectionViewCell

-(instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        
        _LanguageLable = [UILabel new];
        _LanguageLable.backgroundColor = [UIColor grayColor];
        _LanguageLable.textColor = [UIColor blackColor];
        _LanguageLable.textAlignment = YES;
        [self.contentView addSubview:_LanguageLable];
        
        [_LanguageLable mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.edges.equalTo(self.contentView);
        }];
        
        
    }

    return self;
}

@end
