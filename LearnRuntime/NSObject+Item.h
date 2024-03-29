//
//  NSObject+Item.h
//  LearnRuntime
//
//  Created by Mac on 19/6/4.
//  Copyright © 2019年 Mac. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ModelDelegate <NSObject>

@optional
// 提供一个协议，只要准备这个协议的类，都能把数组中的字典转模型
//用在三级数组转换
+ (NSDictionary *)arrayContainModelClass;

@end

@interface NSObject (Item)

+(instancetype)objectWithDict:(NSDictionary *)dict;

@end
