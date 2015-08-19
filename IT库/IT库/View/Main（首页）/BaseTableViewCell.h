//
//  BaseTableViewCell.h
//  IT库
//
//  Created by apple on 15/8/19.
//  Copyright (c) 2015年 apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseTableViewCell : UITableViewCell<UICollectionViewDataSource,UICollectionViewDelegate>
{
    
    UICollectionView *_collectionView;
}

@property(nonatomic,strong)NSArray *array;
@property(nonatomic,strong)UICollectionViewLayout *layout;

@property (nonatomic, assign) NSInteger selectedIndex;
@property (nonatomic, weak) id target;
@property (nonatomic, assign) SEL action;

- (void)addTarget:(id)target action:(SEL)action;
@end
