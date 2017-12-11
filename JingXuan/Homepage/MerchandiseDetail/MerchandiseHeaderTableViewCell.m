//
//  MerchandiseHeaderTableViewCell.m
//  JingXuan
//
//  Created by sfs on 2017/12/11.
//  Copyright © 2017年 rhjt. All rights reserved.
//

#import "MerchandiseHeaderTableViewCell.h"
@interface MerchandiseHeaderTableViewCell()
@property (nonatomic, strong) UIImageView *merchandiseIconImgView;
@property (nonatomic, strong) UILabel *replyNum;
@property (nonatomic, strong) UILabel *merchandiseNameLabel;
@property (nonatomic, strong) UILabel *merchandiseIntro;
@property (nonatomic, strong) UILabel *merchandisePrice;
@property (nonatomic, strong) UILabel *merchandiseOldPrice;
@property (nonatomic, strong) UILabel *merchandiseItem;
@end
@implementation MerchandiseHeaderTableViewCell
- (void)createSubview{
    self.merchandiseIconImgView = [[UIImageView alloc] init];
    self.merchandiseIconImgView.backgroundColor = [UIColor grayColor];
    [self.contentView addSubview:self.merchandiseIconImgView];
    [self.merchandiseIconImgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.top.trailing.mas_equalTo(self.contentView);
        make.height.mas_equalTo(self.merchandiseIconImgView).multipliedBy(280/375);
    }];
    
    UIView *verticalLine = [[UIView alloc] init];
    verticalLine.backgroundColor = INSETCOLOR;
    [self.contentView addSubview:verticalLine];
    [verticalLine mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.merchandiseIconImgView.mas_bottom);
        make.width.mas_equalTo(1);
        make.trailing.mas_equalTo(self.contentView).offset(-CUSTOM_WIDTH(98));
        make.bottom.mas_equalTo(self.contentView);
    }];
    //右边一个辅助view而已
    UIView *rightAssitView = [[UIView alloc] init];
    [self.contentView addSubview:rightAssitView];
    [rightAssitView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.merchandiseIconImgView.mas_bottom);
        make.trailing.bottom.mas_equalTo(self.contentView);
        make.left.mas_equalTo(verticalLine.mas_trailing);
    }];
    
    self.replyNum = [UILabel initWithCustomFontOfSize:[UIFont fontWithName:@"PingFangSC-Medium" size:18] color:STYLECOLOR text:@"999+"];
    [rightAssitView addSubview:self.replyNum];
    [self.replyNum mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.merchandiseIconImgView.mas_bottom).offset(40);
        make.centerX.mas_equalTo(rightAssitView);
    }];
    
    UILabel *const_replyNum = [UILabel initWithCustomFontOfSize: [UIFont fontWithName:@"PingFangSC-Regular" size:14] color:STYLECOLOR text:@"用户评价"];
    [rightAssitView addSubview:const_replyNum];
    [const_replyNum mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(rightAssitView);
        make.top.mas_equalTo(self.replyNum.mas_bottom).offset(6);
    }];
    
    UIButton *lookButton = [UIButton initCustomTypeButtonWithTextColor:TEXTCOLOR backGroudColor:COLOR_RGB16(0xffffff) cornerRadius:0 fontSize:14 title:@"查看"];
    lookButton.layer.borderWidth = 1;
    lookButton.layer.borderColor = COLOR_RGB16(0x979797).CGColor;
    [rightAssitView addSubview:lookButton];
    [lookButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(rightAssitView);
        make.top.mas_equalTo(const_replyNum.mas_bottom).offset(19);
        make.width.mas_equalTo(36);
        make.height.mas_equalTo(22);
    }];
    
    self.merchandiseNameLabel = [UILabel initWithCustomFontOfSize:[UIFont fontWithName:@"PingFangSC-Regular" size:18] color:TITLECOLOR text:@"商品名称"];
    [self.contentView addSubview:self.merchandiseNameLabel];
    [self.merchandiseNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(self.contentView.mas_leading).offset(CUSTOM_WIDTH(14));
        make.top.mas_equalTo(self.merchandiseIconImgView.mas_bottom).offset(14);
        make.trailing.mas_equalTo(verticalLine.mas_leading).offset(-CUSTOM_WIDTH(14));
    }];
    
    self.merchandiseIntro = [UILabel initWithCustomFontOfSize: [UIFont fontWithName:@"PingFangSC-Regular" size:14] color:TEXTCOLOR text:@"introintrointrointrointrointrointro"];
    [self.contentView addSubview:self.merchandiseIntro];
    [self.merchandiseIntro mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(self.contentView.mas_leading).offset(CUSTOM_WIDTH(14));
        make.top.mas_equalTo(self.merchandiseNameLabel.mas_bottom).offset(8);
        make.trailing.mas_equalTo(verticalLine.mas_leading).offset(-CUSTOM_WIDTH(14));
    }];
    
    self.merchandisePrice = [[UILabel alloc] init];
    self.merchandisePrice.textColor = STYLECOLOR;
    [self.contentView addSubview:self.merchandisePrice];
    [self.merchandisePrice mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(self.contentView.mas_leading).offset(CUSTOM_WIDTH(14));
        make.top.mas_equalTo(self.merchandiseIntro.mas_bottom).offset(8);
    }];
    
    self.merchandiseOldPrice = [UILabel initWithCustomFontOfSize: [UIFont fontWithName:@"PingFangSC-Regular" size:12] color:COLOR_RGB16(0x999999) text:@"¥100.00"];
    [self.contentView addSubview:self.merchandiseOldPrice];
    [self.merchandiseOldPrice mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(self.merchandisePrice.mas_trailing).offset(CUSTOM_WIDTH(20));
        make.bottom.mas_equalTo(self.merchandiseOldPrice.mas_bottom);
    }];
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
