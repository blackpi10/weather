//
//  HotCompanyTableViewCell.m
//  爱题库
//
//  Created by apple on 15/8/18.
//  Copyright (c) 2015年 apple. All rights reserved.
//

#import "HotCompanyTableViewCell.h"
#import "HotCompanyCollectionViewCell.h"
#import "UIImageView+WebCache.h"
#import "Masonry.h"


@implementation HotCompanyTableViewCell

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{

    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        _titleLable = [[UILabel alloc]initWithFrame:CGRectZero];
        _titleLable.font = [UIFont systemFontOfSize:16];
        _titleLable.text = @"热门公司";
        [self.contentView addSubview:_titleLable];
        
        [_titleLable mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.top.equalTo(self.contentView).offset(5);
            make.left.equalTo(self.contentView).offset(12);
            
        }];
        
        [_collectionView registerClass:[HotCompanyCollectionViewCell class] forCellWithReuseIdentifier:@"CompanyCell"];
        _collectionView.scrollEnabled = NO;
        _collectionView.backgroundColor = [UIColor blackColor];
        [_collectionView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView).offset(4);
            make.left.right.equalTo(self.contentView);
            make.bottom.equalTo(self.contentView).offset(-2);
            
        }];
        
        
        UICollectionViewFlowLayout *layout = (UICollectionViewFlowLayout *)_collectionView.collectionViewLayout;
        layout.itemSize = CGSizeMake(62, 62);
        layout.minimumLineSpacing = 12;
        layout.minimumInteritemSpacing = (self.bounds.size.width - 62*4)/5;
        layout.sectionInset = UIEdgeInsetsMake(10, 12, 10, 12);
        
    }

    return self;

}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{

    HotCompanyCollectionViewCell *cell = (HotCompanyCollectionViewCell *)[collectionView dequeueReusableCellWithReuseIdentifier:@"CompanyCell" forIndexPath:indexPath];
    
    

    return cell;
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
