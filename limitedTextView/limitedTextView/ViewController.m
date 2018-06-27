//
//  ViewController.m
//  limitedTextView
//
//  Created by yanglin on 2018/6/27.
//  Copyright © 2018 yanglin. All rights reserved.
//

#import "ViewController.h"
#import "LimitedTextView.h"
#import "LimitedTextField.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet LimitedTextField *LTextField;
@property (weak, nonatomic) IBOutlet LimitedTextView *LTextView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [_LTextView setTextLengthDidChanged:^(NSInteger length) {
        NSLog(@"%ld",(long)length);
    }];
    
}


@end
