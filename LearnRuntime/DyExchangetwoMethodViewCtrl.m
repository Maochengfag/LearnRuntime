//
//  DyExchangetwoMethodViewCtrl.m
//  LearnRuntime
//
//  Created by Mac on 19/6/5.
//  Copyright © 2019年 Mac. All rights reserved.
//

#import "DyExchangetwoMethodViewCtrl.h"
#import "Person.h"
#include <objc/runtime.h>

@interface DyExchangetwoMethodViewCtrl ()
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (nonatomic, strong) Person *person;
@end

@implementation DyExchangetwoMethodViewCtrl

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.person = [Person new];
    NSLog(@"%@",_person.sayName);
    NSLog(@"%@",_person.saySex);
    
    Method m1 = class_getInstanceMethod([self.person class], @selector(sayName));
    Method m2 = class_getInstanceMethod([self.person class], @selector(saySex));
    
    method_exchangeImplementations(m1, m2);
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    [NSThread sleepForTimeInterval:1];
    [self sayName:nil];
     [NSThread sleepForTimeInterval:2];
    [self saySex:nil];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)sayName:(id)sender {
    self.textField.text = [_person sayName];
    
}
- (IBAction)saySex:(id)sender {
    self.textField.text = [_person saySex];
    
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
