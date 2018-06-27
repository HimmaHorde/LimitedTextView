//
//  LimitedTextView.h
//  limitedTextView
//
//  Created by yanglin on 2018/6/27.
//  Copyright © 2018 yanglin. All rights reserved.
//  限制输入字数上限的的 textview

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface LimitedTextView : UITextView

/**
 最大文字长度限制
 */
@property (nonatomic, assign) IBInspectable NSInteger maximumTextLength;
/**
 文字长度改变后回调函数
 */
@property (nonatomic, copy) void (^textLengthDidChanged)(NSInteger length);
@end

NS_ASSUME_NONNULL_END
