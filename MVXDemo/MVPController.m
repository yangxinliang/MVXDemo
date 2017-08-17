//
//  MVPController.m
//  MVXDemo
//
//  Created by PingAnXL on 2017/8/17.
//  Copyright © 2017年 PingAnXL. All rights reserved.
//

#import "MVPController.h"

#import "MVPModel.h"
#import "MVPView.h"
#import "MVPPresent.h"

@interface MVPController ()

/** present **/
@property (nonatomic, strong) MVPPresent * present;


@end

@implementation MVPController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor whiteColor];

    
    /*
     mvp 
     model: 数据存储
     view： 业务的展示
     present： 数据的处理，业务逻辑的处理
     controller：controller 是个基本单元,主要负责建立三者的关系还有view的生命周期
     
     所有的业务逻辑和数据处理都在present类，从而使controller 代码量减少了
     任务均摊，我们将主要的任务划分到present和model，view只负责根据数据绘制相应的页面
     可测试比较好，尤其针对view做单元测试，
     但是代码量比mvc多，逻辑比mvc 稍微复杂些，但是MVP的概念比较清晰
     
     
     */
    MVPView * mvpView = [[MVPView alloc] init];
    mvpView.frame = self.view.bounds;
    [self.view addSubview:mvpView];
    
    
    MVPPresent * present = [MVPPresent new];
    
    self.present = present;
    [present setDataSoure:mvpView];



}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
