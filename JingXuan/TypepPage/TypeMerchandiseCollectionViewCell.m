//
//  TypeMerchandiseCollectionViewCell.m
//  JingXuan
//
//  Created by sfs on 2017/12/7.
//  Copyright © 2017年 rhjt. All rights reserved.
//

#import "TypeMerchandiseCollectionViewCell.h"
@interface TypeMerchandiseCollectionViewCell()
@property (nonatomic, strong) UIImageView *iconIMGV;
@property (nonatomic, strong) UILabel *titleLbal;
@end
@implementation TypeMerchandiseCollectionViewCell
- (void)createSubview{
    self.backgroundColor = [UIColor whiteColor];
    self.iconIMGV = [[UIImageView alloc] init];
    self.iconIMGV.backgroundColor = [UIColor grayColor];
    [self.contentView addSubview:self.iconIMGV];
    [self.iconIMGV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.top.mas_equalTo(self).offset(2);
        make.trailing.mas_equalTo(self).offset(-2);
        make.height.mas_equalTo(self.mas_width).multipliedBy(1);
    }];
    
    self.titleLbal = [UILabel initWithCustomFontOfSize: [UIFont fontWithName:@"PingFangSC-Regular" size:14] color:TITLECOLOR text:@"item"];
    self.titleLbal.textAlignment = NSTextAlignmentCenter;
    [self.contentView addSubview:self.titleLbal];
    [self.titleLbal mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(self);
        make.top.mas_equalTo(self.iconIMGV.mas_bottom).offset(10);
    }];
}
@end
