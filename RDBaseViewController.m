//
//  RDBaseViewController.m
//  RouterDemo
//
//  Created by 张新 on 16/8/16.
//  Copyright © 2016年 voidxin. All rights reserved.
//

#import "RDBaseViewController.h"

@interface RDBaseViewController ()

@end

@implementation RDBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self initUI];
}
-(void)initUI{
    self.view.backgroundColor=[UIColor whiteColor];
}

- (void)setParams:(NSDictionary *)params{
    NSString *titleStr=params[@"title"];
    self.title=titleStr;
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
