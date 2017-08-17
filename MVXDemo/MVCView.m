//
//  MVCView.m
//  MVXDemo
//
//  Created by PingAnXL on 2017/8/17.
//  Copyright © 2017年 PingAnXL. All rights reserved.
//

#import "MVCView.h"

#import "MVCModel.h"

@interface MVCView ()
/** label **/
@property (nonatomic, strong) UILabel * contenLabel;

/** 点击打印 **/
@property (nonatomic, strong) UIButton * printButton;



@end
@implementation MVCView

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

- (void)setModel:(MVCModel *)model {

    _model = model;
    self.contenLabel.text = _model.content;

}


- (void)printClick {

    if (_delegate) {
        
        [_delegate sendMessage];
    }



}








@end
