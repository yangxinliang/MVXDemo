//
//  ViewModel.h
//  MVXDemo
//
//  Created by PingAnXL on 2017/8/17.
//  Copyright © 2017年 PingAnXL. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "MVVMModel.h"

@interface ViewModel : NSObject


/** 标题 **/
@property (nonatomic, strong) NSString * content;


- (void)setViewModeWithModel:(MVVMModel *)model;

@end
