//
//  MVPPresent.m
//  MVXDemo
//
//  Created by PingAnXL on 2017/8/17.
//  Copyright © 2017年 PingAnXL. All rights reserved.
//

#import "MVPPresent.h"

@interface MVPPresent ()<MVPViewDelegate>

/** 数据模型 **/
@property (nonatomic, strong) MVPModel * model;

/** view **/
@property (nonatomic, strong) MVPView * mvpView;




@end
@implementation MVPPresent


- (void)setDataSoure:(MVPView *)mvpView {

    
    MVPModel * model = [MVPModel new];
    
    model.content = @"MVP";
    
    self.model = model;
    
    mvpView.titleString = model.content;
   
    
    self.mvpView = mvpView;
    self.mvpView.delegate = self;

}


- (void)sendMessage {


    NSInteger rand = arc4random() % 9;
    
    self.model.content = [NSString stringWithFormat:@"%ld",rand];
    
    self.mvpView.titleString = self.model.content;
    

}




@end
