//
//  LanguageTableViewCell.m
//  IT库
//
//  Created by apple on 15/8/19.
//  Copyright (c) 2015年 apple. All rights reserved.
//

#import "LanguageTableViewCell.h"
#import "LanguageCollectionViewCell.h"
#import "Masonry.h"
#import "UIImageView+WebCache.h"

@interface LanguageTableViewCell ()
{

    NSArray *LanguageArray;

}

@end

@implementation LanguageTableViewCell

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        _titleLable = [[UILabel alloc]initWithFrame:CGRectZero];
        _titleLable.font = [UIFont systemFontOfSize:16];
        _titleLable.text = @"热门语言";
        [self.contentView addSubview:_titleLable];
        
        [_titleLable mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.top.equalTo(self.contentView).offset(5);
            make.left.equalTo(self.contentView).offset(12);
            
        }];
        
        [_collectionView registerClass:[LanguageCollectionViewCell class] forCellWithReuseIdentifier:@"LanguageCell"];
        _collectionView.scrollEnabled = NO;
        _collectionView.backgroundColor = [UIColor clearColor];
        [_collectionView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(_titleLable.mas_bottom).offset(4);
            make.left.right.equalTo(self.contentView);
            make.bottom.equalTo(self.contentView).offset(-2);
            
        }];
        
        UICollectionViewFlowLayout *layout = (UICollectionViewFlowLayout *)_collectionView.collectionViewLayout;
        layout.itemSize = CGSizeMake(100, 40);
        layout.minimumLineSpacing = 12;
        layout.minimumInteritemSpacing = (self.bounds.size.width - 100*2)/3;
        layout.sectionInset = UIEdgeInsetsMake(10, 12, 10, 12);
        
        LanguageArray = @[@"Objective-C",@"C++",@"Java",@"C#",@"Ruby",@"PHP"];
    }
    
    
    return self;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    LanguageCollectionViewCell *cell = (LanguageCollectionViewCell *)[collectionView dequeueReusableCellWithReuseIdentifier:@"LanguageCell" forIndexPath:indexPath];
    
    cell.LanguageLable.text = LanguageArray[indexPath.item];
    
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
