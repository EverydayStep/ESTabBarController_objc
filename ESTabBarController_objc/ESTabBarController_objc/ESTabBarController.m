//
//  ESTabBarController.m
//  ESTabBarController_objc
//
//  Created by codeLocker on 2017/9/14.
//  Copyright © 2017年 codeLocker. All rights reserved.
//

#import "ESTabBarController.h"

@interface ESTabBarController ()

@end

@implementation ESTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Public_Methods
- (void)setViewController:(UIViewController *)viewController title:(NSString *)title normalImage:(UIImage *)normalImage selectedImage:(UIImage *)selectedImage {
    if (!viewController) {
        return;
    }
    UITabBarItem *item = [[UITabBarItem alloc] init];
    item.title = title;
    item.image = [normalImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    item.selectedImage = selectedImage;
    viewController.tabBarItem = item;
    [self addChildViewController:viewController];
}

#pragma mark - Setter && Getter
- (void)setIsTranslucent:(BOOL)isTranslucent {
    _isTranslucent = isTranslucent;
    self.tabBar.translucent = _isTranslucent;
}

- (void)setBarTintColor:(UIColor *)barTintColor {
    _barTintColor = barTintColor;
    self.tabBar.barTintColor = _barTintColor;
}

- (void)setTintColor:(UIColor *)tintColor {
    _tintColor = tintColor;
    self.tabBar.tintColor = _tintColor;
}

- (void)setHideLine:(BOOL)hideLine {
    _hideLine = hideLine;
    if (_hideLine) {
        self.tabBar.backgroundImage = [[UIImage alloc] init];
        self.tabBar.shadowImage = [[UIImage alloc] init];
    }
}

@end
