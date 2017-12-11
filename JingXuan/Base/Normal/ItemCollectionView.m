//
//  ItemCollectionView.m
//  JingXuan
//
//  Created by sfs on 2017/12/11.
//  Copyright © 2017年 rhjt. All rights reserved.
//

#import "ItemCollectionView.h"
#import "ItemCollectionViewCell.h"
@interface ItemCollectionView()<UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout>
@end
@implementation ItemCollectionView
- (instancetype)initWithFrame:(CGRect)frame collectionViewLayout:(UICollectionViewLayout *)layout{
    self = [super initWithFrame:frame collectionViewLayout:layout];
    if (self) {
        [self createSubview];
    }
    return self;
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return self.titlesArray.count;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    NSString *currentString = self.titlesArray[indexPath.row];
    switch (self.type) {
        case ItemCollectionViewItemTypeBorder:{
            return [currentString sizeWithAttributes:@{NSFontAttributeName:[UIFont fontWithName:@"PingFangSC-Regular" size:14]}];
            break;
        }
        case ItemCollectionViewItemTypePoint:{
            CGSize size = [currentString sizeWithAttributes:@{NSFontAttributeName:[UIFont fontWithName:@"PingFangSC-Regular" size:14]}];
            return CGSizeMake(size.width + 15, size.height);
            break;
            
        }
        default:
            break;
    }
     return CGSizeZero;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    ItemCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"ItemCollectionViewCell" forIndexPath:indexPath];
    cell.type = self.type;
    cell.itemLabel.text = self.titlesArray[indexPath.row];
    return cell;
}


- (void)createSubview{
    [self registerClass:[ItemCollectionViewCell class] forCellWithReuseIdentifier:@"ItemCollectionViewCell"];
//    self.delegate = self;
    self.dataSource = self;
}

- (NSArray<NSString *> *)titlesArray{
    if (!_titlesArray) {
        _titlesArray = [NSArray array];
    }
    return _titlesArray;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
