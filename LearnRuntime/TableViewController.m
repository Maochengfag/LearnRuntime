//
//  TableViewController.m
//  LearnRuntime
//
//  Created by Mac on 19/6/4.
//  Copyright © 2019年 Mac. All rights reserved.
//

#import "TableViewController.h"
#import "DyVairController.h"
#import "DyAddMethodViewCtrl.h"
#import "DyExchangetwoMethodViewCtrl.h"
#import "RobReplaceMethodViewCtrl.h"
#import "AddExtroFuncInMethodViewCtrl.h"
#import "ImpArchiveUnarchiveViewCtrl.h"
#import "AutoImpDicToModeViewCtrl.h"

@interface TableViewController ()

@property (nonatomic, strong) NSArray *dataSource;

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"runtime";
    
    _dataSource = @[@"动态变量控制",
                    @"动态添加方法",
                    @"动态交换两个方法的实现",
                    @"拦截并替换方法",
                    @"在方法上增加额外功能",
                    @"实现NSCoding的自动归档和解档",
                    @"实现字典转模型的自动转换"
                    ];
    
    self.tableView.tableFooterView = [UIView new];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return _dataSource.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *cellId = @"cellId";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    
    if (cell ==nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellId];
    }
    
    cell.textLabel.text = _dataSource[indexPath.row];
    tableView.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

// In a xib-based application, navigation from a table can be handled in -tableView:didSelectRowAtIndexPath:
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    // Navigation logic may go here, for example:
    // Create the next view controller.
    
    UIViewController *nextVC = nil;
    
    NSInteger index = indexPath.row;
    
    switch (index) {
        case 0:
            nextVC = [[DyVairController alloc] init];
            break;
        case 1:
            nextVC = [[DyAddMethodViewCtrl alloc] init];
            break;
        case 2:
            nextVC = [[DyExchangetwoMethodViewCtrl alloc] init];
            break;
        case 3:
            nextVC = [[RobReplaceMethodViewCtrl alloc] init];
            break;
        case 4:
            nextVC = [[AddExtroFuncInMethodViewCtrl alloc] init];
            break;
        case 5:
            nextVC = [[ImpArchiveUnarchiveViewCtrl alloc] init];
            break;
        case 6:
            nextVC = [[AutoImpDicToModeViewCtrl alloc] init];
            break;
    }
    
    // Pass the selected object to the new view controller.
    
    if (nextVC) {
        // Push the view controller.
        [self.navigationController pushViewController:nextVC animated:YES];
    }
    
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
