//
//  QuestionViewController.m
//  IT库
//
//  Created by apple on 15/8/19.
//  Copyright (c) 2015年 apple. All rights reserved.
//

#import "QuestionViewController.h"
#import "TitleButton.h"
#import "SelectedLanguageTableViewController.h"
@interface QuestionViewController ()<setLanguageDelegte>
{

    TitleButton *_titleButton;
    SelectedLanguageTableViewController *_LanguangeCtrl;
}
@end

@implementation QuestionViewController

-(void)titleButtom{

    _titleButton = [[TitleButton alloc]initWithFrame:CGRectMake(0, 0, 120, 40)];
    _titleButton.titleLable.text = @"Objective-C";
    [_titleButton addTarget:self action:@selector(didTitleClicked:) forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.titleView = _titleButton;
    _LanguangeCtrl = [[SelectedLanguageTableViewController alloc]initWithNibName:@"SelectedLanguageTableViewController" bundle:nil];

}

- (void)didTitleClicked:(TitleButton *)sender {
    NSLog(@"%@", sender.titleLable.text);
    
    UINavigationController *LanCtrl = [[UINavigationController alloc]initWithRootViewController:_LanguangeCtrl];
    _LanguangeCtrl.delegate = self;
    [self.navigationController presentViewController:LanCtrl animated:YES completion:^{
        
        
    }];
}

-(void)backControllerLanguage:(NSString *)string{

    _titleButton.titleLable.text = string;

}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self titleButtom];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
