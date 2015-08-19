//
//  AppDelegate.m
//  IT库
//
//  Created by apple on 15/8/19.
//  Copyright (c) 2015年 apple. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (UIViewController *)tabBarController {
    UITabBarController *tabBarCtrl = [[UITabBarController alloc] init];
    
    //类名数组
    NSArray *ctrlNames = @[@"MainTableViewController", @"QuestionViewController", @"AskViewController", @"MyTableViewController"];
    NSArray *titles = @[@"首页", @"刷题", @"问答", @"我的"];
    //视图控制器数组
    NSMutableArray *viewCtrls = [NSMutableArray array];
    for (int index = 0; index < ctrlNames.count; index++) {
        //得到一个类
        Class cls = NSClassFromString(ctrlNames[index]);
        //创建视图控制器对象
        UIViewController *ctrl = [[cls alloc] init];
        ctrl.navigationItem.title = titles[index];
        
        //创建导航控制器
        UINavigationController *navCtrl = [[UINavigationController alloc] initWithRootViewController:ctrl];
        navCtrl.tabBarItem = [[UITabBarItem alloc] initWithTitle:titles[index] image:nil selectedImage:nil];
        [viewCtrls addObject:navCtrl];
    }
    
    tabBarCtrl.viewControllers = viewCtrls;
    
    return tabBarCtrl;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    //创建窗口并显示
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    [self.window makeKeyAndVisible];
    
    self.window.rootViewController = self.tabBarController;
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
