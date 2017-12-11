//
//  UserReplyTableViewCell.m
//  JingXuan
//
//  Created by sfs on 2017/12/11.
//  Copyright © 2017年 rhjt. All rights reserved.
//

#import "UserReplyTableViewCell.h"
#import "RatingBar.h"
@interface UserReplyTableViewCell()
@property (nonatomic, strong) UIImageView *userIconIMGV;
@property (nonatomic, strong) UILabel *userNameLabel;
@property (nonatomic, strong) RatingBar *rateBar;
@property (nonatomic, strong) UILabel *replyDetailLabel;
@property (nonatomic, strong) UILabel *replyLabel;
@end
@implementation UserReplyTableViewCell
- (void)createSubview{
    self.userIconIMGV = [[UIImageView alloc] init];
    [self.contentView addSubview:self.userIconIMGV];
    [self.userIconIMGV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.top.mas_equalTo(self.contentView).offset(CUSTOM_WIDTH(14));
        make.width.mas_equalTo(CUSTOM_WIDTH(30));
        make.height.mas_equalTo(self.userIconIMGV.mas_width);
    }];
    
    self.userNameLabel = [UILabel initWithCustomFontOfSize: [UIFont fontWithName:@"PingFangSC-Regular" size:14] color:TITLECOLOR text:@"用户名用户名"];
    [self.contentView addSubview:self.userNameLabel];
    [self.userNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.mas_equalTo(self.userIconIMGV);
        make.leading.mas_equalTo(self.userIconIMGV.mas_trailing).offset(CUSTOM_WIDTH(10));
        make.width.mas_lessThanOrEqualTo(200);
    }];
    
    self.rateBar = [[RatingBar alloc] initWithFrame:CGRectMake(0, 0, 98, 13) unselected_imageName:[UIImage imageNamed:@""] selected_imageName:[UIImage imageNamed:@""]];
    [self.contentView addSubview:self.rateBar];
    [self.rateBar mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(self.userNameLabel.mas_trailing).offset(CUSTOM_WIDTH(10));
        make.centerY.mas_equalTo(self.userNameLabel);
        make.width.mas_equalTo(98);
        make.height.mas_equalTo(13);
    }];
    
    self.replyDetailLabel = [UILabel initWithCustomFontOfSize:[UIFont fontWithName:@"PingFangSC-Regular" size:14] color:COLOR_RGB16(0x999999) text:@"xxxx.xx.xx  xx:xx xx"];
    [self.contentView addSubview:self.replyDetailLabel];
    [self.replyDetailLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(self.contentView).offset(CUSTOM_WIDTH(14));
        make.top.mas_equalTo(self.userIconIMGV.mas_bottom).offset(10);
    }];
    
    self.replyLabel = [UILabel initWithCustomFontOfSize:[UIFont fontWithName:@".PingFangSC-Regular" size:14] color:TITLECOLOR text:@"夭修，超级好用捏，炒鸡推荐的诶～不买就是你会很亏的捏"];
    self.replyLabel.numberOfLines = 0;
    [self.contentView addSubview:self.replyLabel];
    [self.replyLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(self.contentView).offset(CUSTOM_WIDTH(14));
        make.trailing.mas_equalTo(self.contentView).offset(-CUSTOM_WIDTH(14));
        make.top.mas_equalTo(self.replyDetailLabel.mas_bottom).offset(10);
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
