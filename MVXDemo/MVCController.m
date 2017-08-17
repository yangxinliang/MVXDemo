//
//  MVCController.m
//  MVXDemo
//
//  Created by PingAnXL on 2017/8/17.
//  Copyright © 2017年 PingAnXL. All rights reserved.
//

#import "MVCController.h"
#import "MVCView.h"
#import "MVCModel.h"

@interface MVCController ()<MVCViewDelegate>

/** 数据模型 **/
@property (nonatomic, strong) MVCModel * model;

/** view **/
@property (nonatomic, strong) MVCView * mvcView;



@end

@implementation MVCController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    /*
     view： 负责业务展示（用户界面）
     model： 负责数据存储
     controller: 负责处理数据，业务逻辑，
     mvc 总结： 任务均摊 view和model确实是分开的，但是view 和controller 却是紧密耦合的
     可测试性- 由于糟糕的分散性，只能对model进行测试
     易用性，与其他的几设计模式相比代码量比较小，熟悉的人比较多，对于经验不那么丰富的开发者来说比较容易维护
     
     注意：对于现在的mvc 其实view和model也在紧密耦合  如何都在controller 里处理的话会使controller的代码量增加，不利于维护 苹果期望的mvc 其中 viw和model 是不能直接通信的
     
     */
    MVCView * mvcView = [[MVCView alloc] init];
    mvcView.frame = self.view.bounds;
    mvcView.delegate = self;
    self.mvcView = mvcView;
    [self.view addSubview:mvcView];
    
    MVCModel * model = [MVCModel new];
    model.content = @"mvc展示";
    self.model = model;
    mvcView.model = model;
}

- (void)sendMessage {

    
    NSInteger rand = arc4random() % 9;
    
    self.model.content = [NSString stringWithFormat:@"%ld",rand];
    
    self.mvcView.model = self.model;
  

}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}



@end
