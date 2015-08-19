//
//  SelectedLanguageTableViewController.m
//  IT库
//
//  Created by apple on 15/8/19.
//  Copyright (c) 2015年 apple. All rights reserved.
//

#import "SelectedLanguageTableViewController.h"

@interface SelectedLanguageTableViewController ()
{
    NSArray *LanguageArray;

}
@end

@implementation SelectedLanguageTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"完成" style:UIBarButtonItemStylePlain target:self action:@selector(didFinish:)];
    LanguageArray = @[@"Objective-C",@"C++",@"Java",@"C#",@"Ruby",@"PHP"];
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"LanguageCell"];
    
}

-(void)didFinish:(UIBarButtonItem *)sender{

    [self.navigationController dismissViewControllerAnimated:YES completion:^{
        
        
    }];

}

#pragma mark - Table view data source



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    
    return [LanguageArray count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"LanguageCell" forIndexPath:indexPath];
    
    cell.textLabel.text = LanguageArray[indexPath.row];
    
    return cell;
}


#pragma mark - Table view delegate


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    [self.delegate backControllerLanguage:LanguageArray[indexPath.row]];
    [self.navigationController dismissViewControllerAnimated:YES completion:^{
        
    }];
}





@end
