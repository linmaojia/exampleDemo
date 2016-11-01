//
//  YZGMineTableOrderCell.m
//  yzg
//
//  Created by LXY on 16/6/1.
//  Copyright © 2016年 AVGD. All rights reserved.
//

#import "YZGTableVIewCell.h"

@interface YZGTableVIewCell()

@property (nonatomic, strong) UIImageView *leftImg;         /**<  产品图片 */
@property (nonatomic, strong) UIView *lineView;            /**<  顶部线 */

@end
@implementation YZGTableVIewCell
#pragma mark ************** 懒加载控件
- (UIImageView *)leftImg {
    if (!_leftImg) {
        _leftImg = [[UIImageView alloc] init];
        _leftImg.image = [UIImage imageNamed:@"account_highlight"];
        [_leftImg setContentMode:UIViewContentModeScaleAspectFit];
        
    }
    return _leftImg;
}

#pragma mark ************** 设置cell 内容
- (void)setModel:(ProductDetail *)model{
    _model = model;
    
    
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.backgroundColor = [UIColor whiteColor];
        self.selectionStyle = UITableViewCellSelectionStyleNone;

        
        [self addSubviewsForCell];
        
        [self addConstraintsForCell];
        
        
        
    }
    return self;
}

#pragma mark **************** 添加子控件
- (void)addSubviewsForCell
{
    [self.contentView addSubview:self.leftImg];
  
    [self.contentView addSubview:self.lineView];

}
#pragma mark **************** 约束
- (void)addConstraintsForCell
{
    [_leftImg mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.contentView);
        make.left.equalTo(@(10));
        make.height.width.equalTo(@(80));
    }];
   
    [_lineView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.bottom.equalTo(self.contentView);
        make.left.equalTo(_leftImg);
        make.height.equalTo(@(0.5));
    }];
}
@end
