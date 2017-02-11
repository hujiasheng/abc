//
//  ClassDefine.h
//  BeggarJob
//
//  Created by Zhanggaoju on 2017/2/11.
//  Copyright © 2017年 Zhanggaoju. All rights reserved.
//

#ifndef ClassDefine_h
#define ClassDefine_h

/* ******** app基础设置  ********** */

//app基础色调

//琥珀色
#define AppBaseColor_MainColor [UIColor colorWithHexString:@"24D7C8"]
//柠檬色
#define AppBaseColor_LemonColor [UIColor colorWithHexString:@"E8E692"]
//深青色
#define AppBaseColor_Darkcyan [UIColor colorWithHexString:@"008B8B"]
//浅绿色
#define AppBaseColor_Lightcyan [UIColor colorWithHexString:@"e0ffff"]
//白色
#define AppBaseColor_WhiteColor [UIColor colorWithHexString:@"FFFFFF"]


//随机背景颜色
#define RandomColor [UIColor colorWithRed:arc4random_uniform(255)/255.0 green:arc4random_uniform(255)/255.0 blue:arc4random_uniform(255)/255.0 alpha:1.0]

//住色调
#define MainDefaultColor kRGBColor(227, 119, 43)

//导航栏title颜色  字样
#define NavTitleColor   @{NSForegroundColorAttributeName:AppBaseColor_WhiteColor,NSFontAttributeName:[UIFont fontWithName:@"DBLCDTempBlack" size:18.0]}

#define setNavigationBarTitleView(text) [MJUtilities labelWithText:text fontSize:19 textColor:[UIColor whiteColor] numberOfLines:1 textAlignment:NSTextAlignmentCenter backgroundColor:nil frame:CGRectMake(0, 0, 150, 21)];



#endif /* ClassDefine_h */
