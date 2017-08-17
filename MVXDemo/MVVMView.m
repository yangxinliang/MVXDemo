//
//  MVVMView.m
//  MVXDemo
//
//  Created by PingAnXL on 2017/8/17.
//  Copyright © 2017年 PingAnXL. All rights reserved.
//

#import "MVVMView.h"

#import "FBKVOController.h"
#import "NSObject+FBKVOController.h"


@interface MVVMView ()

/** label **/
@property (nonatomic, strong) UILabel * contenLabel;

/** 点击打印 **/
@property (nonatomic, strong) UIButton * printButton;


@end

@implementation MVVMView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        self.contenLabel = [[UILabel alloc]initWithFrame:CGRectMake(30, 100, 100, 30)];
        self.contenLabel.textColor = [UIColor blackColor];
        self.contenLabel.font = [UIFont systemFontOfSize:17];
        [self addSubview:self.contenLabel];
        
        
        self.printButton = [[UIButton alloc] initWithFrame:CGRectMake(30,200, 100, 30)];
        [self.printButton setTitle:@"点击" forState:UIControlStateNormal];
        [self.printButton addTarget:self action:@selector(printClick) forControlEvents:UIControlEventTouchUpInside];
        [self.printButton setTitleColor:[UIColor lightGrayColor] forState:UIControlStateNormal];
        [self addSubview:self.printButton];

        
        
    }
    return self;
}

- (void)setWithModel:(ViewModel *)vm {

    _model = vm;
    
    [self.KVOController observe:vm keyPath:@"content" options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionInitial block:^(id  _Nullable observer, id  _Nonnull object, NSDictionary<NSKeyValueChangeKey,id> * _Nonnull change) {
        
        
        NSString * content = change[NSKeyValueChangeNewKey];
        
        self.contenLabel.text = content;
        
        
    }];





}

//通过按钮改变label 显示
- (void)printClick {

    NSInteger rand = arc4random() % 9;
    
    self.model.content = [NSString stringWithFormat:@"%ld",rand];
    
   


}

@end
