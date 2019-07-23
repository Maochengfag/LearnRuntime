//
//  RobReplaceMethodViewCtrl.m
//  LearnRuntime
//
//  Created by Mac on 19/6/5.
//  Copyright © 2019年 Mac. All rights reserved.
//

#import "RobReplaceMethodViewCtrl.h"
#import "Person.h"
#import "Tool.h"
#include <objc/runtime.h>

@interface RobReplaceMethodViewCtrl ()
@property (nonatomic, strong) Person *person;
@property (nonatomic, strong) Tool *tool;

@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation RobReplaceMethodViewCtrl

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    Method m1 = class_getInstanceMethod([self.person class], @selector(sayName));
    Method m2 = class_getInstanceMethod([self.tool class], @selector(changeMethod));
    
    method_exchangeImplementations(m1, m2);
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    [NSThread sleepForTimeInterval:1];
    [self answer:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)answer:(id)sender {
    self.person = [Person new];
    self.textField.text = [_person sayName];
    
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
