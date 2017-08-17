//
//  MVVMView.h
//  MVXDemo
//
//  Created by PingAnXL on 2017/8/17.
//  Copyright © 2017年 PingAnXL. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "ViewModel.h"

@interface MVVMView : UIView


/**  **/
@property (nonatomic, strong) ViewModel * model;


- (void)setWithModel:(ViewModel *)vm;

@end
