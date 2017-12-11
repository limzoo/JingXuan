//
//  ShopCartMerchandiseCollectionViewCell.m
//  JingXuan
//
//  Created by sfs on 2017/12/8.
//  Copyright © 2017年 rhjt. All rights reserved.
//

#import "ShopCartMerchandiseCollectionViewCell.h"
@interface ShopCartMerchandiseCollectionViewCell()
@property (nonatomic, strong) UILabel *titleLabel;
@property  (nonatomic, strong) UILabel *detailLabel;
@property  (nonatomic, strong) UILabel *priceLabel;
@property (nonatomic, strong) UIImageView *merchandiseImageView;
@end
@implementation ShopCartMerchandiseCollectionViewCell
- (void)createSubview{
    self.backgroundColor = [UIColor whiteColor];
    UIButton *selectedButton = [UIButton initCustomTypeButtonWithTextColor:COLOR_RGB16(0xffffff) backGroudColor:COLOR_RGB16(0xffffff) cornerRadius:0 fontSize:0 title:nil];
    [selectedButton setImage:[UIImage imageNamed:@"circle_button"] forState:UIControlStateNormal];
    [self.contentView addSubview:selectedButton];
    [selectedButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.leading.bottom.mas_equalTo(self.contentView);
        make.width.mas_equalTo(CUSTOM_WIDTH(46));
    }];
    
    self.merchandiseImageView = [[UIImageView alloc] init];
    self.merchandiseImageView.backgroundColor = [UIColor grayColor];
    [self.contentView addSubview:self.merchandiseImageView];
    [self.merchandiseImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(80);
        make.centerY.mas_equalTo(self.contentView);
        make.leading.mas_equalTo(selectedButton.mas_trailing);
    }];
    
    self.titleLabel = [UILabel initWithCustomFontOfSize:[UIFont fontWithName:@"PingFangSC-Regular" size:14] color:TITLECOLOR text:@"商品名称商品名称商品名称"];
    [self.contentView addSubview:self.titleLabel];
    [self.titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.contentView.mas_top).offset(CUSTOM_WIDTH(18));
        make.leading.mas_equalTo(self.merchandiseImageView.mas_trailing).offset(CUSTOM_WIDTH(10));
        make.trailing.mas_equalTo(self.contentView).offset(-CUSTOM_WIDTH(14));
    }];
    
    self.detailLabel = [UILabel initWithCustomFontOfSize:[UIFont fontWithName:@"PingFangSC-Regular" size:12] color:TEXTCOLOR text:@"BLABALBALANALAABAN"];
    [self.contentView addSubview:self.detailLabel];
    [self.detailLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.titleLabel.mas_bottom).offset(CUSTOM_WIDTH(8));
        make.leading.mas_equalTo(self.titleLabel);
        make.trailing.mas_equalTo(self.titleLabel);
    }];
    
    UIView *buttonView = [[UIView alloc] init];
    buttonView.layer.borderWidth = 1;
    buttonView.layer.cornerRadius = 2;
    buttonView.layer.borderColor = COLOR_RGB16(0x979797).CGColor;
    [self.contentView addSubview:buttonView];
    [buttonView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(CUSTOM_WIDTH(126));
        make.height.mas_equalTo(24);
        make.bottom.mas_equalTo(self.contentView.mas_bottom).offset(-16);
        make.trailing.mas_equalTo(-CUSTOM_WIDTH(14));
    }];
    
    UIButton *subButton = [UIButton initCustomTypeButtonWithTextColor:TEXTCOLOR backGroudColor:COLOR_RGB16(0xffffff) cornerRadius:0 fontSize:13 title:@"-"];
    [buttonView addSubview:subButton];
    [subButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(CUSTOM_WIDTH(42));
        make.height.mas_equalTo(24);
        make.leading.top.mas_equalTo(buttonView);
    }];
    
    UIButton *addButton = [UIButton initCustomTypeButtonWithTextColor:TEXTCOLOR backGroudColor:COLOR_RGB16(0xffffff) cornerRadius:0 fontSize:13 title:@"+"];
    [buttonView addSubview:addButton];
    [addButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(CUSTOM_WIDTH(42));
        make.height.mas_equalTo(24);
        make.trailing.top.mas_equalTo(buttonView);
    }];
    
    UILabel *numLabel = [UILabel initWithCustomFontOfSize:[UIFont fontWithName:@"PingFangSC-Regular" size:13] color:TEXTCOLOR text:@"0"];
    numLabel.layer.borderColor = COLOR_RGB16(0x979797).CGColor;
    numLabel.layer.borderWidth = 1;
    numLabel.textAlignment = NSTextAlignmentCenter;
    [buttonView addSubview:numLabel];
    [numLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(subButton.mas_trailing);
        make.top.bottom.mas_equalTo(buttonView);
        make.trailing.mas_equalTo(addButton.mas_leading);
    }];
    
    self.priceLabel = [UILabel initWithCustomFontOfSize:[UIFont fontWithName:@"PingFangSC-Regular" size:14] color:TITLECOLOR text:@"¥ 2390.00"];
    [self.contentView addSubview:self.priceLabel];
    [self.priceLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.mas_equalTo(self.contentView).offset(-16);
        make.leading.mas_equalTo(self.titleLabel);
        make.trailing.mas_greaterThanOrEqualTo(buttonView.mas_leading).offset(-CUSTOM_WIDTH(8));
    }];
    
}
@end
