//
//  LimitedTextView.m
//  limitedTextView
//
//  Created by yanglin on 2018/6/27.
//  Copyright © 2018 yanglin. All rights reserved.
//

#import "LimitedTextView.h"

@implementation LimitedTextView

- (void)setup
{
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(didChange) name:UITextViewTextDidChangeNotification object:nil];
}

- (void)didChange{
    //有高亮文字
    if (self.markedTextRange && !self.markedTextRange.empty) {
        return ;
    }
    if (self.maximumTextLength == 0) {
        return ;
    }
    _textLengthDidChanged?_textLengthDidChanged(MIN(self.text.length, self.maximumTextLength)):nil;
    
    if (self.text.length > self.maximumTextLength) {
        self.text = [self.text substringToIndex:self.maximumTextLength];
    }
}

- (void)dealloc
{
    [self removeObserver:self forKeyPath:@"text"];
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
