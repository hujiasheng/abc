//
//  MJDBHelper.h
//  郭明健(QQ:1339601489 欢迎交流) SQLite 数据库操作工具类 (内置已导入FMDB框架跟libsqlite3.tbd)
//  SQLiteManager.dmg 数据库可视化工具
//
//  Created by 郭明健 on 2016/1/15.
//  Copyright © 2016年 MJ Guo. All rights reserved.
//
//  https://github.com/GuoMingJian/MJFramework
//

#import <Foundation/Foundation.h>

@interface MJDBHelper : NSObject

/**
 设置当前数据库[不要带后缀.db]
 
 @param dbName 数据库
 */
+ (void)setCurrentDataBase:(NSString *)dbName;

/**
 判断是否存在数据库表
 
 @param dbName 数据库表
 */
+ (BOOL)isExistDataBase:(NSString *)dbName;

/**
 Document目录下创建数据库文件
 
 @param dbName 数据库文件名
 */
+ (void)createDataBase:(NSString *)dbName;

/**
 判断数据库表是否存在于当前保存的数据库中
 
 @param tbName 表名
 */
+ (BOOL)isExistsTable:(NSString *)tbName;

/**
 根据字典数据创建数据库表
 
 @param tbName 表名
 @param dictionary 数据源
 @param pk 主键，若不需要主键，可传入@""
 @return 数据库表
 */
+ (BOOL)createTable:(NSString *)tbName
         dictionary:(NSDictionary *)dictionary
         primaryKey:(NSString *)pk;


#pragma mark - 增

/**
 插入数据
 
 @param tbName 表名
 @param dictionary 数据源
 @param isOnlyOne YES:表内只插入一条数据；NO:末尾不断追加数据
 */
+ (BOOL)insertInToTable:(NSString *)tbName
             dictionary:(NSDictionary *)dictionary
              isOnlyOne:(BOOL)isOnlyOne;

#pragma mark - 删

/**
 删除数据
 
 //delete from User where time = '2017-01-16 13:59:37'
 
 @param tbName 表名
 @param sql sql 语句
 */
+ (BOOL)deleteFromTable:(NSString *)tbName
                    sql:(NSString *)sql;

#pragma mark - 改

/**
 修改数据
 
 //update User set time = '2017-01-16 13:59:37' where time = 'xxxx'
 
 @param tbName 表名
 @param sql sql 语句
 */
+ (BOOL)updateFromTable:(NSString *)tbName
                    sql:(NSString *)sql;

#pragma mark - 查

/**
 查询数据
 
 //select * from User where time = '2017-01-16 13:59:37'
 
 @param tbName 表名
 @param sql sql 语句
 */
+ (NSArray *)selectFromTable:(NSString *)tbName
                         sql:(NSString *)sql;

@end
