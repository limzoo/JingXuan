//
//  HompageView.m
//  JingXuan
//
//  Created by sfs on 2017/12/6.
//  Copyright © 2017年 rhjt. All rights reserved.
//

#import "HompageView.h"
#import "LYSlideSelectBar.h"
#import "MerchandiseCollectionViewCell.h"
#import "HP_ADCollectionViewCell.h"
#import "HP_blockCollectionViewCell.h"
#import "HP_merchantCollectionViewCell.h"
#import "MerchandiseCollectionViewCell.h"
#import "HeadCollectionReusableView.h"
@interface HompageView()<UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout>
@property (nonatomic, strong) UISearchBar *searchBar;
@property (nonatomic, strong) LYSlideSelectBar *slideBar;
@property (nonatomic, strong) UICollectionView *mainCollectionView;
@end

@implementation HompageView
#pragma mark -<colleciton协议>
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 4;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    switch (section) {
        case 0:
            return 1;
            break;
        case 1:
            return 1;
            break;
        case 2:
            return 4;
            break;
        case 3:
            return 8;
            break;
        default:
            break;
    }
    return 0;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    switch (indexPath.section) {
        case 0:{
            HP_ADCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"HP_ADCollectionViewCell" forIndexPath:indexPath];
            return cell;
            break;
        }
        case 1:{
            HP_blockCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"HP_blockCollectionViewCell" forIndexPath:indexPath];
            return cell;
            break;
        }
        case 2:{
            HP_merchantCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"HP_merchantCollectionViewCell" forIndexPath:indexPath];
            return cell;
            break;
        }
        case 3:{
            MerchandiseCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"MerchandiseCollectionViewCell" forIndexPath:indexPath];
            return cell;
            break;
        }
        default:
            break;
    }
    return nil;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    switch (indexPath.section) {
        case 0:{
            return CGSizeMake(self.bounds.size.width, 200);
            break;
        }
        case 1:{
            return CGSizeMake(self.bounds.size.width, 116);
            break;
        }
        case 2:{
            return CGSizeMake(self.bounds.size.width/2 - 0.5, 112);
            break;
        }
        case 3:{
             return CGSizeMake(self.bounds.size.width/2 - 0.5, 232);
            break;
        }
        default:
            break;
    }
    return CGSizeZero;
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section{
    switch (section) {
        case 2:
            return 1;
            break;
        case 3:
            return 1;
            break;
        default:
            break;
    }
    return 0;
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section{
    switch (section) {
        case 2:
            return 1;
            break;
        case 3:
            return 1;
            break;
        default:
            break;
    }
    return 0;
}

- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section{
    switch (section) {
        case 1:
            return UIEdgeInsetsMake(0, 0, 8, 0);
            break;
        case 2:
            return UIEdgeInsetsMake(1, 0, 1, 0);
            break;
        case 3:
            return UIEdgeInsetsMake(1, 0, 1, 0);
            break;
        default:
            break;
    }
    return UIEdgeInsetsZero;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout referenceSizeForHeaderInSection:(NSInteger)section{
    switch (section) {
        case 2:{
            return CGSizeMake(self.bounds.size.width, 54);
            break;
        }
        case 3:{
            return CGSizeMake(self.bounds.size.width, 54);
            break;
        }
        default:
            break;
    }
    return CGSizeZero;
}

- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath{
    if ([kind isEqualToString:@"UICollectionElementKindSectionHeader"]) {
        switch (indexPath.section) {
            case 2:{
                HeadCollectionReusableView *view = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"HeadCollectionReusableView" forIndexPath:indexPath];
                view.headTitleLabel.text = @"品牌制造商直供";
                return view;
                break;
            }
            case 3:{
                HeadCollectionReusableView *view = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"HeadCollectionReusableView" forIndexPath:indexPath];
                 view.headTitleLabel.text = @"人气商品";
                return view;
                break;
            }
            default:
                break;
        }
    }
    return nil;
}
- (void)createSubview{
    UIView *substitutionView = [[UIView alloc] initWithFrame:CGRectMake(0, 20, self.bounds.size.width,58)];
    [self addSubview:substitutionView];
    
    UIImageView *iconIMGV = [[UIImageView alloc] init];
    iconIMGV.backgroundColor = [UIColor grayColor];
    iconIMGV.image;
    [substitutionView addSubview:iconIMGV];
    [iconIMGV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(48);
        make.height.mas_equalTo(27);
        make.centerY.mas_equalTo(substitutionView.mas_centerY);
        make.leading.mas_equalTo(substitutionView.mas_leading).offset(CUSTOM_WIDTH(14));
    }];
    
    self.searchBar = [[UISearchBar alloc] init];
    [substitutionView addSubview:self.searchBar];
    [self.searchBar mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(CUSTOM_WIDTH(217));
        make.height.mas_equalTo(38);
        make.centerY.mas_equalTo(substitutionView.mas_centerY);
        make.leading.mas_equalTo(iconIMGV.mas_trailing).offset(CUSTOM_WIDTH(14));
    }];
    
    UIButton *scanButton = [UIButton initCustomTypeButtonWithTextColor:[UIColor whiteColor] backGroudColor:[UIColor whiteColor] cornerRadius:0 fontSize:0 title:0];
    [scanButton setImage:[UIImage imageNamed:@""] forState:UIControlStateNormal];
    [substitutionView addSubview:scanButton];
    [scanButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(20);
        make.height.mas_equalTo(20);
        make.centerY.mas_equalTo(substitutionView.mas_centerY);
        make.trailing.mas_equalTo(substitutionView).offset(-CUSTOM_WIDTH(14));
    }];
    
    UIButton *msgButton = [UIButton initCustomTypeButtonWithTextColor:[UIColor whiteColor] backGroudColor:[UIColor whiteColor] cornerRadius:0 fontSize:0 title:0];
    [msgButton setImage:[UIImage imageNamed:@""] forState:UIControlStateNormal];
    [substitutionView addSubview:msgButton];
    [msgButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(20);
        make.height.mas_equalTo(20);
        make.centerY.mas_equalTo(substitutionView.mas_centerY);
        make.trailing.mas_equalTo(scanButton.mas_leading).offset(-CUSTOM_WIDTH(14));
    }];
    
    UIView *insetLineView = [[UIView alloc] init];
    insetLineView.backgroundColor = INSETCOLOR;
    [self addSubview:insetLineView];
    [insetLineView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.trailing.mas_equalTo(self);
        make.height.mas_equalTo(1);
        make.top.mas_equalTo(substitutionView.mas_bottom);
    }];
    
    self.slideBar = [[LYSlideSelectBar alloc] initWithFrame:CGRectMake(0, 79, self.bounds.size.width * 4 / 5, 44) itemNum:4 slideViewBounds:CGSizeMake(31, 2)];
    self.slideBar.titlesFont = @[[UIFont fontWithName:@".PingFangSC-Regular" size:16],
                                 [UIFont fontWithName:@".PingFangSC-Regular" size:16],
                                 [UIFont fontWithName:@".PingFangSC-Regular" size:16],
                                 [UIFont fontWithName:@".PingFangSC-Regular" size:16]];
    [self.slideBar setItemTinColor:STYLECOLOR defaultColor:COLOR_RGB16(0x666666)];
    [self.slideBar setSlideViewTinColor:STYLECOLOR];
    self.slideBar.titles = @[@"推荐",@"新品",@"限时购",@"居家"];
    [self addSubview:self.slideBar];
    
    UIButton *supplyButton = [UIButton initCustomTypeButtonWithTextColor:COLOR_RGB16(0x666666) backGroudColor:COLOR_RGB16(0xffffff) cornerRadius:0 fontSize:16 title:@"配件"];
    [self addSubview:supplyButton];
    [supplyButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(self.slideBar.mas_trailing);
        make.trailing.mas_equalTo(self);
        make.height.mas_equalTo(self.slideBar.mas_height);
        make.top.mas_equalTo(insetLineView.mas_bottom);
    }];
    
    self.mainCollectionView = [[UICollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:[[UICollectionViewFlowLayout alloc] init]];
    self.mainCollectionView.backgroundColor = INSETCOLOR;
    [self addSubview:self.mainCollectionView];
    self.mainCollectionView.delegate = self;
    self.mainCollectionView.dataSource = self;
    [self.mainCollectionView registerClass:[MerchandiseCollectionViewCell class] forCellWithReuseIdentifier:@"MerchandiseCollectionViewCell"];
    [self.mainCollectionView registerClass:[HP_ADCollectionViewCell class] forCellWithReuseIdentifier:@"HP_ADCollectionViewCell"];
    [self.mainCollectionView registerClass:[HP_blockCollectionViewCell class] forCellWithReuseIdentifier:@"HP_blockCollectionViewCell"];
    [self.mainCollectionView registerClass:[HP_merchantCollectionViewCell class] forCellWithReuseIdentifier:@"HP_merchantCollectionViewCell"];
    [self.mainCollectionView registerClass:[HeadCollectionReusableView class] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader  withReuseIdentifier:@"HeadCollectionReusableView"];
    
    [self.mainCollectionView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.trailing.bottom.mas_equalTo(self);
        make.top.mas_equalTo(self.slideBar.mas_bottom);
    }];
}

@end
