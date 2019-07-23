//
//  DyAddMethodViewCtrl.m
//  LearnRuntime
//
//  Created by Mac on 19/6/5.
//  Copyright © 2019年 Mac. All rights reserved.
//

#import "DyAddMethodViewCtrl.h"
#import "Person.h"
#import <objc/runtime.h>

@interface DyAddMethodViewCtrl ()
@property (weak, nonatomic) IBOutlet UITextField *textfield;
@property (nonatomic, strong) Person *person;
@end

@implementation DyAddMethodViewCtrl

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.person = [Person new];
}
- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    [NSThread sleepForTimeInterval:1];
    [self sayFrom];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)sayFrom{
    class_addMethod([self.person class], @selector(guess), (IMP)guessAnswer, "v@:");
    if ([self.person respondsToSelector:@selector(guesses)]) {
        [self.person performSelector:@selector(guess)];
    }else{
        NSLog(@"sorry, I don't know");
    }
    self.textfield.text = @"Zhejiang";
    
}

void guessAnswer(id self, SEL _cmd){
    NSLog(@"i am from zhejiang");
}

- (IBAction)addMethod:(id)sender {
    [self sayFrom];
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
