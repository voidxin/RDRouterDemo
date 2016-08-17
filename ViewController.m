//
//  ViewController.m
//  RouterDemo
//
//  Created by 张新 on 16/8/16.
//  Copyright © 2016年 voidxin. All rights reserved.
//

#import "ViewController.h"
#import "Masonry.h"
#import "RDCarModel.h"
#import "MJExtension.h"
#import "HHRouter.h"
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong)UITableView *tableView;
@property(nonatomic,strong)NSArray *dataArray;
@property(nonatomic,strong)RDCarModel *carModel;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initData];
    [self initUI];
}
-(void)initData{
    
}

#pragma mark -initUI
-(void)initUI{
    [self.view addSubview:self.tableView];
    [self.tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view);
    }];
}

#pragma mark -tableView datasource and delegate
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.dataArray count];
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell * cell=[tableView dequeueReusableCellWithIdentifier:@"Cell"];
    if (!cell) {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
        cell.selectionStyle=UITableViewCellSelectionStyleNone;
    }
    cell.textLabel.text=self.dataArray[indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    UIViewController *viewController=nil;
    switch (indexPath.row) {
        case 0:
        {
             NSDictionary *dic=[self.carModel mj_keyValues];
            NSString *modelStr=[dic mj_JSONString];
            viewController=[[HHRouter shared] matchController:[NSString stringWithFormat:@"/modelVC/传model/%@",modelStr]];
            
        }
           
            break;
        case 1:
        {
            NSString *url=@"/baidu/index/.html";
            NSString *urlStr=[url stringByReplacingOccurrencesOfString:@"/" withString:@"*"];
            viewController=[[HHRouter shared] matchController:[NSString stringWithFormat:@"/vc/传URL/%@",urlStr]];
            
        }
            
            break;
        default:
            break;
    }
    [self.navigationController pushViewController:viewController animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -getter

- (UITableView *)tableView{
    if (!_tableView) {
        _tableView=[[UITableView alloc]initWithFrame:CGRectZero style:UITableViewStylePlain];
        _tableView.delegate=self;
        _tableView.dataSource=self;
        _tableView.tableFooterView=[[UIView alloc]init];
        _tableView.rowHeight=49;
        _tableView.showsVerticalScrollIndicator=NO;
    }
    return _tableView;
}
- (NSArray *)dataArray{
    if (!_dataArray) {
        _dataArray=@[@"传model",@"传URL"];
    }
    return _dataArray;
}

- (RDCarModel *)carModel{
    if (!_carModel) {
        _carModel=[[RDCarModel alloc]init];
        _carModel.brand=@"福特";
        _carModel.price=@"120000";
        _carModel.color=@"red";
    }
    return _carModel;
}

@end
