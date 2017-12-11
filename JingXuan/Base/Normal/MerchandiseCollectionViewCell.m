//
//  MerchandiseCollectionViewCell.m
//  JingXuan
//
//  Created by sfs on 2017/12/6.
//  Copyright © 2017年 rhjt. All rights reserved.
//

#import "MerchandiseCollectionViewCell.h"
@interface MerchandiseCollectionViewCell()
@property (nonatomic, strong) UILabel *merchandiseTitleLabel;
@property (nonatomic, strong) UILabel *merchandiseDetailLabel;
@property (nonatomic, strong) UILabel *priceLabel;
@property (nonatomic, strong) UIImageView *merchandiseImgView;
@property (nonatomic, strong) UILabel *leftTopCornerStateLabel;
@end
@implementation MerchandiseCollectionViewCell
- (void)createSubview{
    self.backgroundColor = [UIColor whiteColor];
    
    self.merchandiseImgView = [[UIImageView alloc] init];
    self.merchandiseImgView.backgroundColor = [UIColor grayColor];
    self.merchandiseImgView.image;
    [self.contentView addSubview:self.merchandiseImgView];
    [self.merchandiseImgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(128);
        make.height.mas_equalTo(128);
        make.centerX.mas_equalTo(self.contentView);
        make.top.mas_equalTo(self.contentView).offset(24);
    }];
    
    self.leftTopCornerStateLabel = [UILabel initWithSystemFontOfSize:12 color:COLOR_RGB16(0xffffff) text:@"上新"];
    self.leftTopCornerStateLabel.backgroundColor = BACKGROUNDREDCOLOR;
    [self.contentView addSubview:self.leftTopCornerStateLabel];
    [self.leftTopCornerStateLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.leading.mas_equalTo(self.contentView);
        make.height.mas_equalTo(16);
        make.width.mas_equalTo(CUSTOM_WIDTH(38));
    }];
    
    self.merchandiseTitleLabel = [UILabel initWithSystemFontOfSize:14 color:TITLECOLOR text:@"标题"];
    self.merchandiseTitleLabel.textAlignment = NSTextAlignmentLeft;
    [self.contentView addSubview:self.merchandiseTitleLabel];
    [self.merchandiseTitleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(self.contentView).offset(CUSTOM_WIDTH(14));
        make.trailing.mas_equalTo(self.contentView).offset(-CUSTOM_WIDTH(6));
        make.top.mas_equalTo(self.merchandiseImgView.mas_bottom).offset(12);
    }];
    
    self.merchandiseDetailLabel = [UILabel initWithSystemFontOfSize:12 color:COLOR_RGB16(0x999999) text:@"细节"];
    [self.contentView addSubview:self.merchandiseDetailLabel];
    [self.merchandiseDetailLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(self.contentView).offset(CUSTOM_WIDTH(14));
        make.trailing.mas_equalTo(self.contentView).offset(-CUSTOM_WIDTH(27));
        make.top.mas_equalTo(self.merchandiseTitleLabel.mas_bottom).offset(6);
    }];
    
    self.priceLabel = [UILabel initWithSystemFontOfSize:14 color:STYLECOLOR text:@"1234.00"];
    [self.contentView addSubview:self.priceLabel];
    [self.priceLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(self.contentView.mas_leading).offset(CUSTOM_WIDTH(14));
        make.top.mas_equalTo(self.merchandiseDetailLabel.mas_bottom).offset(10);
    }];
}
@end
