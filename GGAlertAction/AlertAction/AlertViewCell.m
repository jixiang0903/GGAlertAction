//
//  AlertViewCell.m
//  GGAlertAction
//
//  Created by 吉祥 on 2017/8/21.
//  Copyright © 2017年 jixiang. All rights reserved.
//

#import "AlertViewCell.h"

@interface AlertViewCell ()

@end
@implementation AlertViewCell
#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width

#pragma mark - Life Cycle
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (!(self = [super initWithStyle:style reuseIdentifier:reuseIdentifier])) return nil;
    self.backgroundColor = [UIColor whiteColor];
    self.contentView.backgroundColor = self.backgroundColor;
    self.selectionStyle = UITableViewCellSelectionStyleNone;
    // initialize
    [self initialize];
    return self;
}

#pragma mark - Private
// 初始化
- (void)initialize {
    self.titleLabel=[[UILabel alloc]initWithFrame:CGRectMake(0, 15, SCREEN_WIDTH, 20)];
    self.titleLabel.textAlignment = NSTextAlignmentCenter;
    self.titleLabel.font = [UIFont systemFontOfSize:15];
    [self.contentView addSubview:self.titleLabel];
    
    self.selectImage = [[UIImageView alloc]initWithFrame:CGRectMake(SCREEN_WIDTH - 50, 17, 20, 15)];
    [self.contentView addSubview:self.selectImage];
    self.selectImage.hidden = YES;
    
}

#pragma mark - Public
- (void)setAction:(AlertAction *)action {
    self.titleLabel.text = action.title;
    self.selectImage.image = action.image;

    //self.selectImage.hidden = action.isShow;
}

@end
