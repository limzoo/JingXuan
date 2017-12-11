//
//  Mine_DetailTableViewCell.m
//  JingXuan
//
//  Created by sfs on 2017/12/8.
//  Copyright © 2017年 rhjt. All rights reserved.
//

#import "Mine_DetailTableViewCell.h"
@implementation Mine_DetailTableViewCell
- (void)createSubview{
    self.titleLabel = [UILabel initWithCustomFontOfSize: [UIFont fontWithName:@"PingFangSC-Regular" size:16] color:TITLECOLOR text:@""];
    [self.contentView addSubview:self.titleLabel];
    [self.titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.mas_equalTo(self.contentView);
        make.leading.mas_equalTo(self.contentView).offset(CUSTOM_WIDTH(14));
    }];
    
    UIImageView *iconIMGV = [[UIImageView alloc] init];
    iconIMGV.backgroundColor = [UIColor grayColor];
    [self.contentView addSubview:iconIMGV];
    [iconIMGV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(25);
        make.height.mas_equalTo(25);
        make.centerY.mas_equalTo(self.contentView);
        make.trailing.mas_equalTo(self.contentView).offset(-CUSTOM_WIDTH(14));
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
