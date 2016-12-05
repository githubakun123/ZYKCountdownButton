//
//  ZYKCountdownButton.m
//  ZYKCountdownButton
//
//  Created by apple on 16/5/23.
//  Copyright © 2016年 ym. All rights reserved.
//

#import "ZYKCountdownButton.h"


@interface ZYKCountdownButton ()
@property (nonatomic,assign)NSInteger count;
@property (nonatomic,strong)NSTimer *timer;

@end
@implementation ZYKCountdownButton


- (id)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder:aDecoder]) {
        [self defaultSetting];
    }
    return self;
}
- (id)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self defaultSetting];
    }
    return self;
}

- (void)dealloc {
    [self stopTimer];
    _timer = nil;
}

/**
 *  默认设置
 */
- (void)defaultSetting {
    self.countNumber = 60;
    self.count = self.countNumber;


    self.titleLabel.font          = [UIFont boldSystemFontOfSize:15];
    self.titleLabel.textAlignment = NSTextAlignmentCenter;
    [self setTitle:@"获取" forState:UIControlStateNormal];
    [self setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self setTitleColor:[UIColor grayColor] forState:UIControlStateHighlighted];
    
    [self addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
}

- (void)setupCountdown {
    self.userInteractionEnabled = NO;
    [self setTitle:[NSString stringWithFormat:@"%ldS",(long)self.countNumber] forState:UIControlStateNormal];
    _timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(countdown) userInfo:nil repeats:YES];
}

/**
 *  倒计时
 */
- (void)countdown {
    [self setImage:[UIImage imageNamed:self.selectedImgName] forState:UIControlStateSelected];
    _count--;
    [self setTitle:[NSString stringWithFormat:@"%ldS",(long)_count] forState:UIControlStateNormal];
    if (_count == 0) {
        [self stopTimer];
    }
}

/**
 *
 */

-(void)startTimer
{
    //开启定时器
    [self setupCountdown];
}


-(void)stopTimer
{
    //关闭定时器
    [self setTitle:@"获取" forState:UIControlStateNormal];
    _count = self.countNumber;
    self.userInteractionEnabled = YES;
    [_timer invalidate];
    _timer = nil;
}


#pragma mark -
#pragma mark --------------------- event handler

- (void)click {
    [self setupCountdown];
}

@end
