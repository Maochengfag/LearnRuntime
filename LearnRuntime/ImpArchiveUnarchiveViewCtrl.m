//
//  ImpArchiveUnarchiveViewCtrl.m
//  LearnRuntime
//
//  Created by Mac on 19/6/5.
//  Copyright © 2019年 Mac. All rights reserved.
//

#import "ImpArchiveUnarchiveViewCtrl.h"
#import "Movie.h"

@interface ImpArchiveUnarchiveViewCtrl ()
@property (nonatomic, retain) NSMutableArray *allDataArray;
@end

@implementation ImpArchiveUnarchiveViewCtrl

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.view.backgroundColor = [UIColor whiteColor];
    self.allDataArray = [NSMutableArray array];
    
    NSDictionary *user = @{
                           @"name":@"zhangsan",
                           @"age": @(12),
                           @"sex": @"man",
                           };
    NSDictionary *dict = @{
                           @"movieId":@"28678",
                           @"movieName": @"539fU8276",
                           @"pic_url": @"fsdfds",
                           @"user" : user
                           };
    
    NSArray *addarr = @[dict, dict, dict];
    NSMutableDictionary *mudict = [NSMutableDictionary dictionaryWithDictionary:dict];
    
    [mudict setObject:user forKey:@"user"];
    
    for (NSDictionary *item in addarr) {
        Movie *movie = [Movie objectWithDict:item];
        [self.allDataArray addObject:movie];
    }
    
    NSLog(@"----%@", _allDataArray);
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
