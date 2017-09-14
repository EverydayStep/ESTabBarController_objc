//
//  ESTabBarController.h
//  ESTabBarController_objc
//
//  Created by codeLocker on 2017/9/14.
//  Copyright © 2017年 codeLocker. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ESTabBarController : UITabBarController
@property (nonatomic, assign) BOOL isTranslucent;
@property (nonatomic, strong) UIColor *barTintColor;
@property (nonatomic, strong) UIColor *tintColor;
@property (nonatomic, assign) BOOL hideLine;

/**
 设置子控制器

 @param viewController 控制器
 @param title 标题
 @param normalImage 未选中状态下图片
 @param selectedImage 选中状态下图片
 */
- (void)setViewController:(UIViewController *)viewController title:(NSString *)title normalImage:(UIImage *)normalImage selectedImage:(UIImage *)selectedImage;
@end
