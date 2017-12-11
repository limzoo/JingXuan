//
//  MineView.m
//  JingXuan
//
//  Created by sfs on 2017/12/6.
//  Copyright © 2017年 rhjt. All rights reserved.
//

#import "MineView.h"
#import "Mine_HeaderTableViewCell.h"
#import "Mine_DetailTableViewCell.h"
@interface MineView()<UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, strong) UITableView *mainTableView;
@property (nonatomic, strong) NSArray *titleArray;
@end
@implementation MineView
#pragma mark - <tableView>
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 3;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    switch (section) {
        case 0:
            return 1;
            break;
        case 1:
            return self.titleArray.count - 1;//因为有一个人在下面那个section
            break;
        case 2:
            return 1;
            break;
        default:
            break;
    }
    return 0;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    switch (indexPath.section) {
        case 0:
            return 278;
            break;
        case 1:
            return 60;
            break;
        case 2:
            return 60;
            break;
        default:
            break;
    }
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    switch (indexPath.section) {
        case 0:{
            Mine_HeaderTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Mine_HeaderTableViewCell" forIndexPath:indexPath];
            cell.selectionStyle = UITableViewCellSelectionStyleNone;
            [cell createButtonWithTitlesArray:@[@"待付款",@"待收货",@"待发货",@"待评价",@"退款订单"]];
            return cell;
            break;
        }
        case 1:{
            Mine_DetailTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Mine_DetailTableViewCell" forIndexPath:indexPath];
            cell.titleLabel.text = self.titleArray[indexPath.row];
            cell.selectionStyle = UITableViewCellSelectionStyleNone;
            return cell;
            break;
        }
        case 2:{
            Mine_DetailTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Mine_DetailTableViewCell" forIndexPath:indexPath];
             cell.titleLabel.text = self.titleArray[self.titleArray.count - 1];
            cell.selectionStyle = UITableViewCellSelectionStyleNone;
            return cell;
            break;
        }
        default:
            break;
    }
    return nil;
}

- (void)createSubview{
    self.mainTableView = [[UITableView alloc] initWithFrame:self.bounds];
    self.mainTableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    [self.mainTableView registerClass:[Mine_HeaderTableViewCell class] forCellReuseIdentifier:@"Mine_HeaderTableViewCell"];
    [self.mainTableView registerClass:[Mine_DetailTableViewCell class] forCellReuseIdentifier:@"Mine_DetailTableViewCell"];
    self.mainTableView.delegate = self;
    self.mainTableView.dataSource = self;
    [self addSubview:self.mainTableView];
}

- (NSArray *)titleArray{
    if (!_titleArray) {
        _titleArray = @[@"地址管理",@"我的收藏",@"我的优惠券",@"我的积分",@"我的消息",@"我的设置",@"我的订阅",@"反馈"];
    }
    return _titleArray;
}
@end
