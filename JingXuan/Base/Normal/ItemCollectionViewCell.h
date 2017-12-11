//
//  ItemCollectionViewCell.h
//  JingXuan
//
//  Created by sfs on 2017/12/11.
//  Copyright © 2017年 rhjt. All rights reserved.
//

#import "BaseCollectionViewCell.h"
typedef NS_ENUM(NSInteger, ItemCollectionViewItemType){
    ItemCollectionViewItemTypeBorder = 0,
    ItemCollectionViewItemTypePoint = 1
};
@interface ItemCollectionViewCell : BaseCollectionViewCell
@property (nonatomic, strong) UILabel *itemLabel;
@property (nonatomic, assign) ItemCollectionViewItemType type;
@end
