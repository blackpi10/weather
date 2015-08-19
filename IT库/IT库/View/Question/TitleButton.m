//
//  TitleButton.m
//  IT库
//
//  Created by apple on 15/8/19.
//  Copyright (c) 2015年 apple. All rights reserved.
//

#import "TitleButton.h"
#import "Masonry.h"
@implementation TitleButton

-(instancetype)initWithFrame:(CGRect)frame{

    self = [super initWithFrame:frame];
    if (self) {
        
        _titleLable = [UILabel new];
        _titleLable.textAlignment = YES;
        [self addSubview:_titleLable];
        
        _imageView = [UIImageView new];
        [self addSubview:_imageView];
        
        [_titleLable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.and.top.and.bottom.equalTo(self);
            make.centerY.equalTo(self);
            make.right.equalTo(_imageView.mas_left);
        }];
        
        [_imageView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.equalTo(self);
            make.size.equalTo(@20);
            make.right.equalTo(self);
        }];
        
    }


    return self;

}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    
    _titleLable.textColor = [UIColor redColor];
    
    [super touchesBegan:touches withEvent:event];
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    _titleLable.textColor = [UIColor blackColor];
    
    [super touchesEnded:touches withEvent:event];
}


@end
