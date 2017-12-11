//
//  HP_merchantCollectionViewCell.m
//  JingXuan
//
//  Created by sfs on 2017/12/7.
//  Copyright © 2017年 rhjt. All rights reserved.
//

#import "HP_merchantCollectionViewCell.h"
@interface HP_merchantCollectionViewCell()
@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UILabel *detailLabel;
@property (nonatomic, strong) UILabel *stateLabel;
@property (nonatomic, strong) UIImageView *iconIMGV;
@end
@implementation HP_merchantCollectionViewCell
- (void)createSubview{
    self.backgroundColor = [UIColor whiteColor];
    
    self.titleLabel = [UILabel initWithCustomFontOfSize:[UIFont fontWithName:@".PingFangSC-Regular" size:14] color:COLOR_RGB16(0x333333) text:@"标题"];
    [self.contentView addSubview:self.titleLabel];
    [self.titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.top.trailing.mas_equalTo(self.contentView).offset(14);
    }];
    
    self.iconIMGV = [[UIImageView alloc] init];
    self.iconIMGV.backgroundColor = [UIColor grayColor];
    [self.contentView addSubview:self.iconIMGV];
    [self.iconIMGV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.height.mas_equalTo(75);
        make.trailing.mas_equalTo(self.contentView).offset(-CUSTOM_WIDTH(7));
        make.bottom.mas_equalTo(self.contentView).offset(-8);
        
    }];
    self.detailLabel = [UILabel initWithCustomFontOfSize:[UIFont fontWithName:@".PingFangSC-Regular" size:14] color:COLOR_RGB16(0x333333) text:@"标题二"];
    [self.contentView addSubview:self.detailLabel];
    [self.detailLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(self.contentView).offset(14);
        make.top.mas_equalTo(self.titleLabel.mas_bottom).offset(8);
        make.trailing.mas_equalTo(self.iconIMGV.mas_leading).offset(-8);
    }];
    
    self.stateLabel = [UILabel initWithCustomFontOfSize:[UIFont fontWithName:@".PingFangSC-Regular" size:12] color:COLOR_RGB16(0xffffff) text:@"状态"];
    self.stateLabel.backgroundColor = COLOR_RGB16(0xc6b49c);
    [self.contentView addSubview:self.stateLabel];
    [self.stateLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(self.mas_leading).offset(14);
        make.top.mas_equalTo(self.detailLabel.mas_bottom).offset(12);
        make.width.mas_equalTo(38);
        make.height.mas_equalTo(16);
    }];
    
}
@end
