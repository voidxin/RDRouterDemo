//
//  RDModelViewController.m
//  RouterDemo
//
//  Created by 张新 on 16/8/16.
//  Copyright © 2016年 voidxin. All rights reserved.
//

#import "RDModelViewController.h"
#import "RDCarModel.h"
#import "MJExtension.h"
@interface RDModelViewController ()

@end

@implementation RDModelViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}
- (void)setParams:(NSDictionary *)params{
    [super setParams:params];
    NSString *modelStr=params[@"model"];
    RDCarModel *carModel=[RDCarModel mj_objectWithKeyValues:modelStr];
    NSLog(@"car brand is:%@",carModel.brand);
     NSLog(@"car price is:%@",carModel.price);
     NSLog(@"car color is:%@",carModel.color);
    
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
