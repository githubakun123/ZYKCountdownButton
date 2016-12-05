//
//  ZYKCountdownButton.h
//  ZYKCountdownButton
//
//  Created by apple on 16/5/23.
//  Copyright © 2016年 ym. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZYKCountdownButton : UIButton

@property (nonatomic,assign) NSInteger countNumber;//起始秒数
@property (nonatomic, copy ) NSString  *normalImgName;
@property (nonatomic, copy ) NSString  *highlightedImgName;
@property (nonatomic, copy ) NSString  *selectedImgName;
@property (nonatomic, copy ) NSString  *bgImgName;

- (void)startTimer;
- (void)stopTimer;

@end
