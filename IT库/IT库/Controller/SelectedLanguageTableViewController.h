//
//  SelectedLanguageTableViewController.h
//  IT库
//
//  Created by apple on 15/8/19.
//  Copyright (c) 2015年 apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol setLanguageDelegte <NSObject>

@optional
-(void)backControllerLanguage:(NSString *)string;
@end

@interface SelectedLanguageTableViewController : UITableViewController

@property(nonatomic,weak)id<setLanguageDelegte>delegate;
@end
