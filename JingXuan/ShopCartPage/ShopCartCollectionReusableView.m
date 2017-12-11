//
//  ShopCartCollectionReusableView.m
//  JingXuan
//
//  Created by sfs on 2017/12/8.
//  Copyright © 2017年 rhjt. All rights reserved.
//

#import "ShopCartCollectionReusableView.h"

@implementation ShopCartCollectionReusableView
- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        [self createSubview];
    }
    return self;
}

- (void)createSubview{
    self.backgroundColor = [UIColor whiteColor];
    
    UIButton *selectedButton = [UIButton initCustomTypeButtonWithTextColor:[UIColor whiteColor] backGroudColor:[UIColor whiteColor] cornerRadius:0 fontSize:0 title:nil];
    [selectedButton setImage:[UIImage imageNamed:@"circle_button"] forState:UIControlStateNormal];
    [self addSubview:selectedButton];
    [selectedButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.top.bottom.mas_equalTo(self);
        make.width.mas_equalTo(CUSTOM_WIDTH(46));
    }];
    
    UILabel *merchantNameLabel = [UILabel initWithCustomFontOfSize: [UIFont fontWithName:@"PingFangSC-Regular" size:14] color:TITLECOLOR text:@"商店名称"];
    [merchantNameLabel sizeToFit];
    [self addSubview:merchantNameLabel];
    [merchantNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.mas_equalTo(self);
        make.leading.mas_equalTo(selectedButton.mas_trailing);
    }];
    
    UIImageView *arrowImg = [[UIImageView alloc] init];
    [self addSubview:arrowImg];
    arrowImg.backgroundColor = [UIColor grayColor];
    
    
    UIButton *editButton = [UIButton initCustomTypeButtonWithTextColor:TITLECOLOR backGroudColor:[UIColor whiteColor] cornerRadius:0 fontSize:14 title:@"编辑"];
    [self addSubview:editButton];
    [editButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.bottom.trailing.mas_equalTo(self);
        make.width.mas_equalTo(CUSTOM_WIDTH(57));
    }];
    
    [arrowImg mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(8);
        make.height.mas_equalTo(13);
        make.centerY.mas_equalTo(self);
        make.leading.mas_equalTo(merchantNameLabel.mas_trailing).offset(CUSTOM_WIDTH(14));
        make.trailing.mas_lessThanOrEqualTo(editButton.mas_leading).offset(-CUSTOM_WIDTH(8));
    }];
//啊 设置一下优先级
    [editButton setContentCompressionResistancePriority:UILayoutPriorityRequired forAxis:UILayoutConstraintAxisHorizontal];
    [arrowImg setContentCompressionResistancePriority:UILayoutPriorityRequired forAxis:UILayoutConstraintAxisHorizontal];
    [merchantNameLabel setContentCompressionResistancePriority:UILayoutPriorityDefaultLow forAxis:UILayoutConstraintAxisHorizontal];
    
}
@end
