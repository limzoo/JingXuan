
//
//  SearchListTableViewCell.m
//  JingXuan
//
//  Created by sfs on 2017/12/11.
//  Copyright © 2017年 rhjt. All rights reserved.
//

#import "SearchListTableViewCell.h"
@interface SearchListTableViewCell()
@property (nonatomic, strong) UICollectionView *serviceCollectionView;
@end
@implementation SearchListTableViewCell
- (void)createSubview{
    UIView *typeChooseView = [[UIView alloc] init];
    [self.contentView addSubview:typeChooseView];
    [typeChooseView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.top.trailing.mas_equalTo(self.contentView);
        make.height.mas_equalTo(44);
    }];
    
    UILabel *const_TypeChooselabel = [UILabel initWithCustomFontOfSize: [UIFont fontWithName:@"PingFangSC-Regular" size:16] color:TEXTCOLOR text:@"规格数量显示"];
    [typeChooseView addSubview:const_TypeChooselabel];
    [const_TypeChooselabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(typeChooseView).offset(CUSTOM_WIDTH(14));
        make.centerY.mas_equalTo(typeChooseView);
    }];
    
    UIImageView *arrowIMGV_1 = [[UIImageView alloc] init];
    [typeChooseView addSubview:arrowIMGV_1];
    [arrowIMGV_1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(8);
        make.height.mas_equalTo(13);
        make.centerY.mas_equalTo(typeChooseView);
        make.trailing.mas_equalTo(typeChooseView).offset(-CUSTOM_WIDTH(14));
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
