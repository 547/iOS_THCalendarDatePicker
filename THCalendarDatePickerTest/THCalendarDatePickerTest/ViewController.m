//
//  ViewController.m
//  THCalendarDatePickerTest
//
//  Created by mac on 16/3/25.
//  Copyright © 2016年 Seven. All rights reserved.
//

#import "ViewController.h"
#import <THDatePickerViewController.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
//展示时间选择器
- (IBAction)showDatePIcker:(id)sender {
    
    
    THDatePickerViewController *datePicker=[[THDatePickerViewController alloc]init];
    datePicker.date=[NSDate date];//为时间选择器设置当前时间
    [datePicker setClearAsToday:YES];//点击clearDate按钮定位到当前的日期
    [datePicker setAllowSelectionOfSelectedDate:YES];//是否可以选择日期
    [datePicker setAutoCloseOnSelectDate:YES];//在选择了日期之后是否关闭日期选择器
    [datePicker setDisableFutureSelection:NO];//不可以选择未来的日子吗
    [datePicker setDisableHistorySelection:NO];//不可以选择已经成为历史的日子吗
    [datePicker setSelectedBackgroundColor:[UIColor colorWithRed:0.2 green:0.1 blue:0.4 alpha:0.5]];//设置被选中的日期的背景颜色
    [datePicker setCurrentDateColor:[UIColor greenColor]];//设置当前日期的字体颜色
    [datePicker setCurrentDateColorSelected:[UIColor yellowColor]];//设置当前日期被选中的背景颜色
    [datePicker setDateHasItemsCallback:^BOOL(NSDate *date) {
        int tmp=(arc4random()%30)+1;
        if (tmp % 5 == 0)
            return YES;
            return NO;
    }];
    //模态弹出半个ViewControll==Semi==半
    [self presentSemiViewController:datePicker withOptions:@{KNSemiModalOptionKeys.pushParentBack:@(NO),KNSemiModalOptionKeys.animationDuration:@(1.0),KNSemiModalOptionKeys.shadowOpacity:@(0.3)}];
    
    
    
    
    
    
    
}










- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
