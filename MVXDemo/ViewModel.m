//
//  ViewModel.m
//  MVXDemo
//
//  Created by PingAnXL on 2017/8/17.
//  Copyright © 2017年 PingAnXL. All rights reserved.
//

#import "ViewModel.h"

@interface ViewModel ()


@end

@implementation ViewModel



- (void)setViewModeWithModel:(MVVMModel *)model {


    self.content = model.contentTitle;
    

}


@end
