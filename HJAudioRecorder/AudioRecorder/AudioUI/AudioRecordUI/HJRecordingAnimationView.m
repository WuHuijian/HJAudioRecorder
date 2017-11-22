//
//  HJRecordingAnimationView.m
//  HJAudioRecorder
//
//  Created by WHJ on 2017/11/22.
//  Copyright © 2017年 WHJ. All rights reserved.
//

#import "HJRecordingAnimationView.h"

@interface HJRecordingAnimationView ()

@property (nonatomic, strong) UIImageView *leftImgV;

@property (nonatomic, strong) UIImageView *rightImgV;

@end


@implementation HJRecordingAnimationView

#pragma mark - Life Circle
-(instancetype)initWithFrame:(CGRect)frame;{
    self = [super initWithFrame:frame];
    if(self){
        
        [self setupUI];
    }
    return self;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self setupUI];
    }
    return self;
}

#pragma mark - About UI
- (void)setupUI{
    

    self.leftImgV = [[UIImageView alloc] init];
    self.leftImgV.image = [UIImage imageNamed:@"RecordingBkg"];
    [self addSubview:self.leftImgV];
    
    
    self.rightImgV = [[UIImageView alloc] init];
    self.rightImgV.image = [UIImage imageNamed:@"RecordingSignal001"];
    [self addSubview:self.rightImgV];
    
    [self hj_layout];
}


- (void)hj_layout{
    
    [self.leftImgV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.top.bottom.mas_equalTo(0);
        make.right.mas_equalTo(self.mas_centerX);
    }];
    

    [self.rightImgV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.top.bottom.mas_equalTo(0);
        make.left.mas_equalTo(self.mas_centerX);
    }];
}



//- (void)layoutSubviews{
//
//    [super layoutSubviews];
//
//    [self.leftImgV mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.left.top.bottom.mas_equalTo(0);
//        make.width.mas_equalTo(self.frame.size.width/2.f);
//    }];
//
//
//    [self.rightImgV mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.right.top.bottom.mas_equalTo(0);
//        make.width.mas_equalTo(self.frame.size.width/2.f);
//    }];
//
//}
#pragma mark - Pravite Method

#pragma mark - Public Method

#pragma mark - Event response

#pragma mark - Delegate methods

#pragma mark - Getters/Setters/Lazy
- (void)setLevel:(CGFloat)level{
    _level = level;
    
    
}

@end
