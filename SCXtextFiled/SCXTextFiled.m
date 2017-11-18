//
//  SCXTextFiled.m
//  MiaoXiaKuan
//
//  Created by 孙传兴 on 2017/11/5.
//  Copyright © 2017年 财鸟金服. All rights reserved.
//

#import "SCXTextFiled.h"
@interface SCXTextFiled ()
@property (nonatomic,strong) UILabel *lbTopPlacehoder;
@end

@implementation SCXTextFiled
- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame: frame]) {
        [self addTarget:self action:@selector(textFiledChanged:) forControlEvents:UIControlEventEditingChanged];
        [self addSubview:self.lbTopPlacehoder];
    }
    return self;
}

- (UILabel *)lbTopPlacehoder{
    if (_lbTopPlacehoder ==nil) {
        _lbTopPlacehoder = [[UILabel alloc]initWithFrame:CGRectMake(15,-6, 100, 20)];
        _lbTopPlacehoder.textColor = [UIColor grayColor];
        _lbTopPlacehoder.font = [UIFont systemFontOfSize:12];
        _lbTopPlacehoder.backgroundColor = [UIColor whiteColor];
        _lbTopPlacehoder.hidden = YES;
        _lbTopPlacehoder.alpha = 0;
    }
    return _lbTopPlacehoder;
}
- (void)textFiledChanged:(id)sender{
    SCXTextFiled * tf =(SCXTextFiled *)sender;
    self.lbTopPlacehoder.text = self.placeholder;
    if (self.placeholder.length > 0) {
        CGSize size = [self.placeholder boundingRectWithSize:CGSizeMake(MAXFLOAT, self.lbTopPlacehoder.bounds.size.height) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:self.lbTopPlacehoder.font} context:nil].size;
        self.lbTopPlacehoder.frame = CGRectMake(15 , -self.lbTopPlacehoder.font.lineHeight/2, size.width, size.height);
        if (tf.text.length > 0) {
            [UIView animateWithDuration:0.3 animations:^{
                self.lbTopPlacehoder.hidden = NO;
                self.lbTopPlacehoder.alpha = 1;
            }];
        }
        if (tf.text.length == 0) {
            [UIView animateWithDuration:0.3 animations:^{
                self.lbTopPlacehoder.hidden = YES;
                self.lbTopPlacehoder.alpha = 0;
            }];
        }
    }
}
@end
