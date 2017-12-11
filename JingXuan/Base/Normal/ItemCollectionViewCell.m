//
//  ItemCollectionViewCell.m
//  JingXuan
//
//  Created by sfs on 2017/12/11.
//  Copyright © 2017年 rhjt. All rights reserved.
//

#import "ItemCollectionViewCell.h"

@implementation ItemCollectionViewCell
- (void)createSubview{
    self.itemLabel = [UILabel initWithCustomFontOfSize: [UIFont fontWithName:@"PingFangSC-Regular" size:14] color:COLOR_RGB16(0xffa000) text:@"item"];
    [self.contentView addSubview:self.itemLabel];
    [self.itemLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.centerY.mas_equalTo(self.contentView);
    }];
    switch (self.type) {
        case ItemCollectionViewItemTypeBorder:{
            self.itemLabel.layer.borderWidth = 1;
            break;
        }
        case ItemCollectionViewItemTypePoint:{
            //这个东西应该考虑直接drawRect里面加好一点
            UIView *point = [[UIView alloc] init];
            point.layer.cornerRadius = 6.0f;
            point.layer.masksToBounds = YES;
            point.backgroundColor = [UIColor grayColor];
            [self.contentView addSubview:point];
            [point mas_makeConstraints:^(MASConstraintMaker *make) {
                make.width.mas_equalTo(12);
                make.height.mas_equalTo(12);
                make.centerY.mas_equalTo(self.itemLabel.mas_centerY);
                make.trailing.mas_equalTo(self.itemLabel.mas_leading).offset(CUSTOM_WIDTH(14));
            }];
            break;
        }
        default:
            break;
    }
}

@end
