//
//  AutoImpDicToModeViewCtrl.m
//  LearnRuntime
//
//  Created by Mac on 19/6/5.
//  Copyright © 2019年 Mac. All rights reserved.
//

#import "AutoImpDicToModeViewCtrl.h"
#import "Movie.h"

@interface AutoImpDicToModeViewCtrl ()

@end

@implementation AutoImpDicToModeViewCtrl

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    Movie *movie = [Movie new];
    movie.movieName = @" Oliver Queueen";
    movie.movieId = @"342523532";
    movie.pic_url = @"sdfdfsfdsf";
    
    NSString *document = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES).lastObject;
    NSString *filePath = [document stringByAppendingString:@"/123.text"];
    
    //模型写入文件
    [NSKeyedArchiver  archiveRootObject:movie toFile:filePath];
    
    //读取
    Movie *m = [NSKeyedUnarchiver unarchiveObjectWithFile:filePath];
    
    NSLog(@"-------%@",movie);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
