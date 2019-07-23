//
//  Tool.h
//  LearnRuntime
//
//  Created by Mac on 19/6/4.
//  Copyright © 2019年 Mac. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Tool : NSObject

+ (instancetype)shareManager;

- (NSString *)changeMethod;
- (void)addCount;

@end
