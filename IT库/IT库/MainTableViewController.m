//
//  MainTableViewController.m
//  爱题库
//
//  Created by apple on 15/8/18.
//  Copyright (c) 2015年 apple. All rights reserved.
//

#import "MainTableViewController.h"
#import "CustomTableViewCell.h"
#import "HotCompanyTableViewCell.h"
#import "LanguageTableViewCell.h"
#import "testModel.h"


@interface MainTableViewController ()

@end

@implementation MainTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.tableView registerClass:[CustomTableViewCell class] forCellReuseIdentifier:@"CustomCell"];
    [self.tableView registerClass:[HotCompanyTableViewCell class] forCellReuseIdentifier:@"CompanyCell"];
    [self.tableView registerClass:[LanguageTableViewCell class] forCellReuseIdentifier:@"LanguageCell"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 3;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    BaseTableViewCell *cell = nil;
    if (indexPath.row == 0) {
        
        cell = [tableView dequeueReusableCellWithIdentifier:@"CustomCell" forIndexPath:indexPath];
        CustomTableViewCell *customCell = (CustomTableViewCell *)cell;
        customCell.array = [testModel testArray];
        
        
    }else if (indexPath.row == 1){
    
        cell = [tableView dequeueReusableCellWithIdentifier:@"CompanyCell" forIndexPath:indexPath];
        HotCompanyTableViewCell *companyCell = (HotCompanyTableViewCell *)cell;
        companyCell.array = @[@1,@2,@3,@4,@5,@6,@7,@8];
    
    }else if(indexPath.row == 2){
    
        cell = [tableView dequeueReusableCellWithIdentifier:@"LanguageCell" forIndexPath:indexPath];
        LanguageTableViewCell *languageCell = (LanguageTableViewCell *)cell;
        languageCell.array = @[@1,@2,@3,@4,@5,@6];
    
    }
    [cell addTarget:self action:@selector(didSelect:)];
    return cell;
}


- (void)didSelect:(CustomTableViewCell *)cell {
    if ([cell isKindOfClass:[CustomTableViewCell class]]) {
        NSLog(@"滚动广告：%ld", cell.selectedIndex);
    }
    else if([cell isKindOfClass:[HotCompanyTableViewCell class]]){
        NSLog(@"热门公司：%ld", cell.selectedIndex);
    }else{
    
        NSLog(@"语言：%ld",cell.selectedIndex);
    }
    
}

@end
