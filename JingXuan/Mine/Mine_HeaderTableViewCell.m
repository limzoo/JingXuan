//
//  Mine_HeaderTableViewCell.m
//  JingXuan
//
//  Created by sfs on 2017/12/8.
//  Copyright © 2017年 rhjt. All rights reserved.
//

#import "Mine_HeaderTableViewCell.h"
@interface Mine_HeaderTableViewCell()
@property (nonatomic, strong) UIImageView *iconImgView;
@property (nonatomic, strong) UILabel *nameLabel;
@property (nonatomic, strong) UILabel *detailLabel;
@property (nonatomic, strong) UIView *blockView;
@end
@implementation Mine_HeaderTableViewCell
- (void)createSubview{
    self.backgroundColor = INSETCOLOR;
    
    UIImageView *iconBackgroundIMGV = [[UIImageView alloc] init];
    iconBackgroundIMGV.backgroundColor = [UIColor redColor];
    [self.contentView addSubview:iconBackgroundIMGV];
    [iconBackgroundIMGV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.leading.trailing.mas_equalTo(self.contentView);
        make.height.mas_equalTo(140);
    }];
    
   self.iconImgView = [[UIImageView alloc] init];
    self.iconImgView.userInteractionEnabled = YES;
    self.iconImgView.backgroundColor = [UIColor grayColor];
    self.iconImgView.layer.cornerRadius = 30;
    self.iconImgView.layer.masksToBounds = YES;
    [iconBackgroundIMGV addSubview:self.iconImgView];
    [self.iconImgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(60);
        make.height.mas_equalTo(60);
        make.top.mas_equalTo(iconBackgroundIMGV.mas_top).offset(35);
        make.leading.mas_equalTo(iconBackgroundIMGV.mas_leading).offset(CUSTOM_WIDTH(14));
    }];
    
    UIButton *movePageDetail = [UIButton initCustomTypeButtonWithTextColor:[UIColor whiteColor] backGroudColor:[UIColor grayColor] cornerRadius:0 fontSize:0 title:0];
    [iconBackgroundIMGV addSubview:movePageDetail];
    [movePageDetail mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.bottom.trailing.mas_equalTo(iconBackgroundIMGV);
        make.width.mas_equalTo(CUSTOM_WIDTH(46));
    }];
    
    self.nameLabel = [UILabel initWithCustomFontOfSize: [UIFont fontWithName:@"PingFangSC-Regular" size:16] color:COLOR_RGB16(0xffffff) text:@"1234567890"];
    [iconBackgroundIMGV addSubview:self.nameLabel];
    [self.nameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(self.iconImgView.mas_trailing).offset(CUSTOM_WIDTH(14));
        make.top.mas_equalTo(iconBackgroundIMGV.mas_top).offset(44);
    }];
    
    self.detailLabel = [UILabel initWithCustomFontOfSize:[UIFont fontWithName:@"PingFangSC-Regular" size:14] color:COLOR_RGB16(0xffffff) text:@"黄金会员"];
    [iconBackgroundIMGV addSubview:self.detailLabel];
    [self.detailLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(self.nameLabel.mas_leading);
        make.top.mas_equalTo(self.nameLabel.mas_bottom).offset(14);
    }];
    
    //下面的东西
    UIView *myOrderView = [[UIView alloc] init];
    myOrderView.backgroundColor = [UIColor whiteColor];
    [self.contentView addSubview:myOrderView];
    [myOrderView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.trailing.mas_equalTo(self.contentView);
        make.top.mas_equalTo(iconBackgroundIMGV.mas_bottom);
        make.height.mas_equalTo(44);
    }];
    
    UILabel *const_myOrderLabel = [UILabel initWithCustomFontOfSize:[UIFont fontWithName:@"PingFangSC-Regular" size:16] color:TEXTCOLOR text:@"我的订单"];
    [myOrderView addSubview:const_myOrderLabel];
    [const_myOrderLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(myOrderView.mas_leading).offset(CUSTOM_WIDTH(14));
        make.centerY.mas_equalTo(myOrderView.mas_centerY);
    }];
    
    UIImageView *arrowImgView = [[UIImageView alloc] init];
    arrowImgView.backgroundColor = [UIColor grayColor];
    [myOrderView addSubview:arrowImgView];
    [arrowImgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(8);
        make.height.mas_equalTo(13);
        make.centerY.mas_equalTo(myOrderView.mas_centerY);
        make.trailing.mas_equalTo(myOrderView.mas_trailing).offset(-CUSTOM_WIDTH(14));
    }];
    
    UILabel *const_myOrderGrayLabel = [UILabel initWithCustomFontOfSize:[UIFont fontWithName:@"PingFangSC-Regular" size:16] color:COLOR_RGB16(0x999999) text:@"全部订单"];
    [myOrderView addSubview:const_myOrderGrayLabel];
    [const_myOrderGrayLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.mas_equalTo(myOrderView);
        make.trailing.mas_equalTo(arrowImgView.mas_leading).offset(-CUSTOM_WIDTH(14));
    }];
    
    self.blockView = [[UIView alloc] init];
    self.blockView.backgroundColor = [UIColor whiteColor];
    [self.contentView addSubview:self.blockView];
    [self.blockView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.trailing.mas_equalTo(self.contentView);
        make.top.mas_equalTo(myOrderView.mas_bottom).offset(1);
        make.height.mas_equalTo(94);
    }];

}
- (void)createButtonWithTitlesArray:(NSArray *)titleArray{
    for (int i = 0; i < titleArray.count; i++) {
        UIButton *button = [UIButton initCustomTypeButtonWithTextColor:TEXTCOLOR backGroudColor:[UIColor whiteColor] cornerRadius:0 fontSize:12 title:titleArray[i]];
        button.tag = 100 + i;
        button.frame = CGRectMake(i * self.contentView.bounds.size.width / 5, 0, self.contentView.bounds.size.width / 5, 94);
        [self.blockView addSubview:button];
        
    }
    
}
- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
