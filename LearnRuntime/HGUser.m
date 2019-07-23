//
//  HGUser.m
//  LearnRuntime
//
//  Created by Mac on 19/6/4.
//  Copyright © 2019年 Mac. All rights reserved.
//

#import "HGUser.h"

@implementation HGUser

- (NSString *)description{
    return [NSString stringWithFormat:@"%@---%@---%@----",_name,_age,_sex];
}

- (void)setValue:(id)value forUndefinedKey:(nonnull NSString *)key{
    if ([key isEqualToString:@"id"]) {
        self.uid = value;
    }
}

@end
