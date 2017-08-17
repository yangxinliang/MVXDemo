//
//  MVCView.h
//  MVXDemo
//
//  Created by PingAnXL on 2017/8/17.
//  Copyright © 2017年 PingAnXL. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MVCModel;


@protocol MVCViewDelegate <NSObject>
- (void)sendMessage;

@end

@interface MVCView : UIView
/** 属性 **/
@property (nonatomic, strong) MVCModel * model;
/** 代理方法 **/
@property (nonatomic, weak) id<MVCViewDelegate>  delegate;

@end
