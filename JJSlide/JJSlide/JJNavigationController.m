//
//  JJNavigationController.m
//  JJSlide
//
//  Created by GM on 16/5/7.
//  Copyright © 2016年 zhuoran. All rights reserved.
//

#import "JJNavigationController.h"
#import "DHSlideMenuController.h"

@interface JJNavigationController ()

@end

@implementation JJNavigationController

+(void)initialize{
    UINavigationBar *bar = [UINavigationBar appearance];
    [bar setBackgroundImage:[UIImage imageNamed:@"navibg"] forBarMetrics:UIBarMetricsDefault];
    //风格深色系
    [bar setBarStyle:UIBarStyleBlack];
    [bar setTintColor:[UIColor whiteColor]];
    
    [bar setTitleVerticalPositionAdjustment:0 forBarMetrics:UIBarMetricsDefault];
    NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
    attributes[NSForegroundColorAttributeName] = [UIColor whiteColor];
    attributes[NSFontAttributeName] = [UIFont italicSystemFontOfSize:20];
    [bar setTitleTextAttributes:attributes];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    for (UIViewController *vc in self.childViewControllers)
    {
        vc.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"Menu"] style:UIBarButtonItemStylePlain target:self action:@selector(toggleSideView)];
        
        vc.navigationItem.leftBarButtonItem.tintColor = [UIColor whiteColor];
    }

}
/**
 *  侧滑按钮
 */
- (void)toggleSideView {
    [[DHSlideMenuController sharedInstance] showLeftViewController:YES];
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
