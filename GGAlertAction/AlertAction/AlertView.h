//
//  AlertView.h
//  GGAlertAction
//
//  Created by 吉祥 on 2017/8/21.
//  Copyright © 2017年 jixiang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AlertAction.h"

@interface AlertView : UIView

@property (nonatomic, assign) BOOL hideAfterTouchOutside; ///< 是否开启点击外部隐藏弹窗, 默认为YES.
@property (nonatomic, assign) BOOL showShade; ///< 是否显示阴影, 如果为YES则弹窗背景为半透明的阴影层, 否则为透明, 默认为NO.
@property (nonatomic, assign) PopoverViewStyle style; ///< 弹出窗风格, 默认为 PopoverViewStyleDefault(白色).

+ (instancetype)popoverView;

/*! @brief 指向指定的View来显示弹窗
 *  @param actions   动作对象集合<AlertAction>
 */
- (void)showWithActions:(NSMutableArray<AlertAction *> *)actions;

@end
