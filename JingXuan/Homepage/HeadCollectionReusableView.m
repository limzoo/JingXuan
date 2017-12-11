//
//  HeadCollectionReusableView.m
//  JingXuan
//
//  Created by sfs on 2017/12/7.
//  Copyright © 2017年 rhjt. All rights reserved.
//

#import "HeadCollectionReusableView.h"

@implementation HeadCollectionReusableView
- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
        
        self.headTitleLabel = [UILabel initWithCustomFontOfSize:[UIFont fontWithName:@".PingFangSC-Regular" size:16] color:COLOR_RGB16(0x666666) text:@"品牌制造商直供"];
        [self addSubview: self.headTitleLabel];
        [self.headTitleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.centerY.mas_equalTo(self);
        }];
        
        UIImageView *imageView = [[UIImageView alloc] init];
        imageView.backgroundColor = [UIColor grayColor];
        [self addSubview:imageView];
        [imageView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.width.mas_equalTo(12);
            make.height.mas_equalTo(12);
            make.leading.mas_equalTo(self.headTitleLabel.mas_trailing).offset(CUSTOM_WIDTH(10));
            make.centerY.mas_equalTo(self);
        }];
    }
    return self;
}
@end
