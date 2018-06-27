//
//  LimitedTextField.h
//  limitedTextView
//
//  Created by yanglin on 2018/6/27.
//  Copyright © 2018 yanglin. All rights reserved.
//  限制最大长度的 textfield

#import <UIKit/UIKit.h>

@interface LimitedTextField : UITextField
/**
 最大文字长度限制
 */
@property (nonatomic, assign) IBInspectable NSInteger maximumTextLength;

/**
 文字长度改变后回调函数
 */
@property (nonatomic, copy) void (^textLengthDidChanged)(NSInteger length);
@end
