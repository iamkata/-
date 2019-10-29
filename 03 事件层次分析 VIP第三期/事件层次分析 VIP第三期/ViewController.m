//
//  ViewController.m
//  事件层次分析 VIP第三期
//
//  Created by 八点钟学院 on 2018/3/23.
//  Copyright © 2018年 八点钟学院. All rights reserved.
//

#import "ViewController.h"
#import "EOCDataObject.h"
#import "EOCFindingViewController.h"
#import "EOCCaseViewController.h"
#import "EOCGestureViewController.h"
#import "EOCButtonEventViewController.h"

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>
{
    NSArray *cellTextArr;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationItem.title = @"八点钟学院";
    
    cellTextArr = @[[[EOCDataObject alloc]initWithCellText:@"触摸事件" viewType:EOCTouchEventView], [[EOCDataObject alloc]initWithCellText:@"手势事件" viewType:EOCGestureEventView], [[EOCDataObject alloc]initWithCellText:@"Button事件" viewType:EOCButtonEventView], [[EOCDataObject alloc]initWithCellText:@"案例" viewType:EOCCaseView]];
    
    UITableView *mainTable = [[UITableView alloc] initWithFrame:CGRectMake(0.f, 0.f, self.view.eocW, self.view.eocH) style:UITableViewStylePlain];
    mainTable.delegate = self;
    mainTable.dataSource = self;
    mainTable.tableFooterView = [[UIView alloc] init];
    [self.view addSubview:mainTable];
    
}

#pragma mark - UITableView delegate&&datasource method
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return cellTextArr.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"cell";
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    cell.textLabel.text = [cellTextArr[indexPath.row] cellText];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if ([cellTextArr[indexPath.row] viewType] == EOCTouchEventView) {
        
        EOCFindingViewController *touchEventViewCtrl = [[EOCFindingViewController alloc] init];
        [self.navigationController pushViewController:touchEventViewCtrl animated:YES];
        
    } else if ([cellTextArr[indexPath.row] viewType] == EOCGestureEventView) {
        
        EOCGestureViewController *gestureEventViewCtrl = [[EOCGestureViewController alloc] init];
        [self.navigationController pushViewController:gestureEventViewCtrl animated:YES];
        
    } else if ([cellTextArr[indexPath.row] viewType] == EOCButtonEventView) {
        
        EOCButtonEventViewController *btnEventViewCtrl = [[EOCButtonEventViewController alloc] init];
        [self.navigationController pushViewController:btnEventViewCtrl animated:YES];
        
    }  else if ([cellTextArr[indexPath.row] viewType] == EOCCaseView) {
        
        EOCCaseViewController *caseViewCtrl = [[EOCCaseViewController alloc] init];
        [self.navigationController pushViewController:caseViewCtrl animated:YES];
        
    }
}

@end
