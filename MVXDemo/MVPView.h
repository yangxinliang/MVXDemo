//
//  MVPView.h
//  MVXDemo
//
//  Created by PingAnXL on 2017/8/17.
//  Copyright © 2017年 PingAnXL. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol MVPViewDelegate <NSObject>
- (void)sendMessage;

@end

@interface MVPView : UIView

/** 传入的字符串**/
@property (nonatomic, strong) NSString * titleString;

/** 代理方法 **/
@property (nonatomic, weak) id<MVPViewDelegate>  delegate;

@end
