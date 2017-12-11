//
//  ShopCartView.m
//  JingXuan
//
//  Created by sfs on 2017/12/6.
//  Copyright © 2017年 rhjt. All rights reserved.
//

#import "ShopCartView.h"
#import "ShopCartCollectionReusableView.h"
#import "ShopCartMerchandiseCollectionViewCell.h"
@interface ShopCartView ()<UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout>
@property (nonatomic, strong) UICollectionView *mainCollectionView;
@property (nonatomic, strong) UILabel *ammountLabel;
@end
@implementation ShopCartView
#pragma mark -<collectionView>
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 8;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return arc4random()%6 + 1;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    return CGSizeMake(self.bounds.size.width, 112);
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    ShopCartMerchandiseCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"ShopCartMerchandiseCollectionViewCell" forIndexPath:indexPath];
    return cell;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout referenceSizeForHeaderInSection:(NSInteger)section{
    return CGSizeMake(self.bounds.size.width, 44);
}

- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath{
    if ([kind isEqualToString:UICollectionElementKindSectionHeader]) {
        ShopCartCollectionReusableView *view = [collectionView dequeueReusableSupplementaryViewOfKind:kind withReuseIdentifier:@"ShopCartCollectionReusableView" forIndexPath:indexPath];
        return view;
    }
    return nil;
    
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section{
    return 0;
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section{
    return 0;
}

- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section{
    return UIEdgeInsetsMake(1, 0, 8, 0);
}
- (void)createSubview{
    self.backgroundColor = INSETCOLOR_F5;
    
    self.mainCollectionView = [[UICollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:[[UICollectionViewFlowLayout alloc] init]];
    self.mainCollectionView.backgroundColor = INSETCOLOR_F5;
    self.mainCollectionView.delegate = self;
    self.mainCollectionView.dataSource = self;
    [self.mainCollectionView registerClass:[ShopCartMerchandiseCollectionViewCell class] forCellWithReuseIdentifier:@"ShopCartMerchandiseCollectionViewCell"];
    [self.mainCollectionView registerClass:[ShopCartCollectionReusableView class] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"ShopCartCollectionReusableView"];
    [self addSubview:self.mainCollectionView];
    
    UIView *bottomView = [[UIView alloc] init];
    bottomView.backgroundColor = [UIColor whiteColor];
    [self addSubview:bottomView];
    
    [bottomView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.trailing.mas_equalTo(self);
        make.height.mas_equalTo(49);
        make.bottom.mas_equalTo(self).offset(-1);
    }];
    
    [self.mainCollectionView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.top.trailing.mas_equalTo(self);
        make.bottom.mas_equalTo(bottomView.mas_top).offset(-1);
    }];
    

    UIButton *selectAllButton = [UIButton initCustomTypeButtonWithTextColor:TITLECOLOR backGroudColor:COLOR_RGB16(0xffffff) cornerRadius:0 fontSize:14 title:@"全选"];
        [selectAllButton setImage:[UIImage imageNamed:@"circle_button"] forState:UIControlStateNormal];
    selectAllButton.imageEdgeInsets = UIEdgeInsetsMake(0, -10, 0, 10);
    [bottomView addSubview:selectAllButton];
    [selectAllButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.mas_equalTo(bottomView);
        make.leading.mas_equalTo(bottomView).offset(14);
        make.width.mas_equalTo(62);
        make.height.mas_equalTo(18);
    }];
    
    UIButton *payOrderButton = [UIButton initCustomTypeButtonWithTextColor:COLOR_RGB16(0xffffff) backGroudColor:COLOR_RGB16(0xd8d8d8) cornerRadius:0 fontSize:16 title:@"下单"];
    [bottomView addSubview:payOrderButton];
    [payOrderButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.bottom.trailing.mas_equalTo(bottomView);
        make.width.mas_equalTo(CUSTOM_WIDTH(140));
    }];
    
    self.ammountLabel = [UILabel initWithCustomFontOfSize: [UIFont fontWithName:@"PingFangSC-Regular" size:14] color:STYLECOLOR text:@"¥0.00"];
    [bottomView addSubview:self.ammountLabel];
    [self.ammountLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.mas_equalTo(bottomView);
        make.trailing.mas_equalTo(payOrderButton.mas_leading).offset(-CUSTOM_WIDTH(14));
    }];
}

@end
