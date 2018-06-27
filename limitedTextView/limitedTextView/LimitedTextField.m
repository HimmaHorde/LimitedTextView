//
//  LimitedTextField.m
//  limitedTextView
//
//  Created by yanglin on 2018/6/27.
//  Copyright © 2018 yanglin. All rights reserved.
//

#import "LimitedTextField.h"

@implementation LimitedTextField

-(void)setup
{
    [self addTarget:self action:@selector(textDidChange:) forControlEvents:UIControlEventEditingChanged];
}

- (void)textDidChange:(UITextField *)textField
{
    UITextRange *selectedRange = textField.markedTextRange;
    UITextPosition *position   = [textField positionFromPosition:selectedRange.start offset:0];
    if (position) {
        return ;
    }
    
    if (self.maximumTextLength == 0) {
        return ;
    }
    _textLengthDidChanged?_textLengthDidChanged(MIN(self.text.length, self.maximumTextLength)):nil;
    if (textField.text.length > self.maximumTextLength) {
        textField.text = [textField.text substringToIndex:self.maximumTextLength];
    }
}

#pragma mark - init
- (instancetype)init
{
    self = [super init];
    if (self) {
        [self setup];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        [self setup];
    }
    return self;
}

@end
