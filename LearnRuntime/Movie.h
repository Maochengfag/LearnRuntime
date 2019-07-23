//
//  Movie.h
//  LearnRuntime
//
//  Created by Mac on 19/6/4.
//  Copyright © 2019年 Mac. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSObject+Item.h"
#import "HGUser.h"

@interface Movie : NSObject<NSCoding, ModelDelegate>

@property (nonatomic, strong) HGUser *user;
@property (nonatomic, copy) NSString *movieId;
@property (nonatomic, copy) NSString *movieName;
@property (nonatomic, copy) NSString *pic_url;

@end
