# JJSlide  仿QQ侧滑
###找了很多demo,大都是用代码写的,于是研究了用storyboard怎么实现侧滑,tabBar控制器可以添加多个子控制器,侧滑的距离可以由`DHSlideMenuController.m`中的`_leftViewShowWidth=250`来调节,设置代码在`AppDelegate.m`中,由于要将`DHSlideMenuController`设置为根视图控制器,所以要手动启动



#主要代码



`self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];

    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    UITabBarController *tabBarvc = [sb instantiateViewControllerWithIdentifier:@"tabbarvc"];
    
    DHSlideMenuController *mainvc = [DHSlideMenuController sharedInstance];
    
    UIViewController *leftvc = [sb instantiateViewControllerWithIdentifier:@"leftvc"];
    
    mainvc.mainViewController = tabBarvc;
    mainvc.leftViewController = leftvc;
    mainvc.animationType = SlideAnimationTypeMove;
    mainvc.needPanFromViewBounds = YES;
    
    self.window.rootViewController = mainvc;
    
    [self.window makeKeyAndVisible];`
