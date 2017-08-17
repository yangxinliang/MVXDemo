//
//  MVVMController.m
//  MVXDemo
//
//  Created by PingAnXL on 2017/8/17.
//  Copyright © 2017年 PingAnXL. All rights reserved.
//

#import "MVVMController.h"
#import "MVVMView.h"
#import "MVVMModel.h"
#import "ViewModel.h"


@interface MVVMController ()

@end

@implementation MVVMController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    // 初始化数据其实这个model 应该放在viewModel里面的  controller 只负责一些view和viewmodel的双向绑定 当然也负责view的视图的生命周期
    /*
     MVVM 总结
     
      viwe: 用户界面
      model : 数据的存储
      viewModel ：数据的请求，数据处理，业务逻辑
     
     使用mvvm 最正确的姿势是搭配现在已经成熟的 ReactiveCocoa
     
     
     
     任务均摊 – 在例子中并不是很清晰，但是事实上，MVVM的View要比MVP中的View承担的责任多。因为前者通过ViewModel的设置绑定来更新状态，而后者只监听Presenter的事件但并不会对自己有什么更新。
     可测试性 – ViewModel不知道关于View的任何事情，这允许我们可以轻易的测试ViewModel。同时View也可以被测试，但是由于属于UIKit的范畴，对他们的测试通常会被忽略。
     
     易用性 – 在我们例子中的代码量和MVP的差不多，但是在实际开发中，我们必须把View中的事件指向Presenter并且手动的来更新View，如果使用绑定的话，MVVM代码量将会小的多
     
     */
    MVVMModel * model = [[MVVMModel alloc] init];
    
    model.contentTitle = @"MVVM";
    
    MVVMView * mvvmView = [[MVVMView alloc] init];
    mvvmView.frame = self.view.bounds;
    [self.view addSubview:mvvmView];
    
    
    ViewModel * viewModel = [[ViewModel alloc] init];
    
    // viewModel 进行数据请求和数据处理 还有一些业务的处理
    [viewModel setViewModeWithModel:model];
    // mvvmView 进行显示
    [mvvmView setWithModel:viewModel];
    
    
    
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
