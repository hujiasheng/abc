//
//  UINavigationController+FullScreenPopGesture.h
//  test
//
//  Created by 郭明健 on 2016/7/11.
//  Copyright © 2016年 MJ Guo. All rights reserved.
//
//  https://github.com/GuoMingJian/MJFramework
//

#import <UIKit/UIKit.h>

@interface UINavigationController (FullScreenPopGesture)

/**
 设置全屏pop手势
 
 @param enable YES : 全屏pop手势生效，NO : 不生效
 */
- (void)setFullScreenPopGesture:(BOOL)enable;

@end
