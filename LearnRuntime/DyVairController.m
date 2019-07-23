//
//  DyVairController.m
//  LearnRuntime
//
//  Created by Mac on 19/6/5.
//  Copyright © 2019年 Mac. All rights reserved.
//

#import "DyVairController.h"
#import "Person.h"
#import <objc/runtime.h>

@interface DyVairController ()

@property (weak, nonatomic) IBOutlet UITextField *textFiled;
@property (nonatomic, strong) Person *person;
@end

@implementation DyVairController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.person = [Person new];
    _person.name = @"Oliver Mao";
    NSLog(@"Oliver Mao first answer is %@",self.person.name);
  }

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    [NSThread sleepForTimeInterval:1];
    [self sayName];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)sayName{
    unsigned int count = 0;
    Ivar *ivar = class_copyIvarList([self.person class], &count);
    for (int i =0; i < count; i++) {
        Ivar var = ivar[i];
        const char *varName = ivar_getName(var);
        NSString *proname = [NSString stringWithUTF8String:varName];
        if ([proname isEqualToString:@"_name"]) {
            object_setIvar(self.person, var, @"Maochengfang");
            break;
        }
    }
    
    NSLog(@"Oliver Mao change name  is %@",self.person.name);
    self.textFiled.text = self.person.name;
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
