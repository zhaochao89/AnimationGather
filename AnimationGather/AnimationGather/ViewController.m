//
//  ViewController.m
//  AnimationGather
//
//  Created by zhaochao on 2017/2/20.
//  Copyright © 2017年 zhaochao. All rights reserved.
//

#import "ViewController.h"
#import <DatePicker/ZHDatePicker.h>

@interface ViewController ()

@property (nonatomic, strong) UIButton *animationBtn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.animationBtn = [[UIButton alloc] initWithFrame:CGRectMake(30, 50, 0, 0)];
    [self.animationBtn setTitle:@"➕" forState:UIControlStateNormal];
    self.animationBtn.titleLabel.font = [UIFont systemFontOfSize:18];
    [self.animationBtn sizeToFit];
    [self.view addSubview:self.animationBtn];
    
    ZHDatePicker *datePicker = [[ZHDatePicker alloc] initWithFrame:CGRectMake(0, 100, [UIScreen mainScreen].bounds.size.width, 200)];
    datePicker.monthCount = 5;
    [datePicker setSelectecBlock:^(NSString *dataStr) {
        NSLog(@"确定选择：%@",dataStr);
    }];
    [self.view addSubview:datePicker];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
