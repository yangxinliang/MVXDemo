//
//  ViewController.m
//  MVXDemo
//
//  Created by PingAnXL on 2017/8/17.
//  Copyright © 2017年 PingAnXL. All rights reserved.
//

#import "ViewController.h"

#import "MVCController.h"

#import "MVPController.h"

#import "MVVMController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];


    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        
        [self showMVVM];
    });
    
    
}

- (void)showMVC {


    [self presentViewController:[MVCController new] animated:YES completion:nil];


}

- (void)showMVP {
    
    
    [self presentViewController:[MVPController new] animated:YES completion:nil];
    
    
}

- (void)showMVVM {
    
    
    [self presentViewController:[MVVMController new] animated:YES completion:nil];
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
