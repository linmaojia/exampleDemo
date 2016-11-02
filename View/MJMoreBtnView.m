//
//  YZGMineTableHeadView.m
//  yzg
//
//  Created by LXY on 16/6/1.
//  Copyright © 2016年 AVGD. All rights reserved.
//

#import "MJMoreBtnView.h"

@interface MJMoreBtnView()


@property (nonatomic, strong) UILabel *totalPrices;
@end

@implementation MJMoreBtnView
- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame])
    {

        [self addSubviewsForView];
        [self addConstraintsForView];
        
    }
    return self;
}
#pragma mark ************** 懒加载控件
- (UILabel *)totalPrices {
    if (!_totalPrices) {
        _totalPrices = [[UILabel alloc] init];
        _totalPrices.textAlignment = NSTextAlignmentRight;
        
        _totalPrices.font = systemFont(12);
        _totalPrices.text = @"共计3件商品 合计 1022.00 元 ";
    }
    return _totalPrices;
}


#pragma mark ************** 添加子控件
- (void)addSubviewsForView
{
    [self addSubview:self.totalPrices];
    

}
#pragma mark ************** 添加约束
- (void)addConstraintsForView
{
    [_totalPrices mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.top.right.equalTo(self);
        make.height.equalTo(@(10));
    }];
}

@end
