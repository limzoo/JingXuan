//
//  BaseCollectionViewCell.m
//  JingXuan
//
//  Created by sfs on 2017/12/6.
//  Copyright © 2017年 rhjt. All rights reserved.
//

#import "BaseCollectionViewCell.h"

@implementation BaseCollectionViewCell
- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        [self configInitial];
        [self createSubview];
    }
    return self;
}
- (void)configInitial{
    
}
- (void)createSubview{
    
}
@end
