//
//  HJAudioRecordView.m
//  HJAudioRecorder
//
//  Created by WHJ on 2017/11/22.
//  Copyright © 2017年 WHJ. All rights reserved.
//

#import "HJAudioRecordView.h"
#import "HJRecordingAnimationView.h"

@interface HJAudioRecordView ()

/** 录音按钮 */
@property (nonatomic, strong) UIButton *recordBtn;

/** 试听按钮 */
@property (nonatomic, strong) UIButton *checkBtn;

/** 删除按钮 */
@property (nonatomic, strong) UIButton *deleteBtn;

/** 录音动画 */
@property (nonatomic, strong) HJRecordingAnimationView *animationView;


@end


static const CGFloat margin = 30.f;
static const CGFloat kRecordBtnH = 60.f;
static const CGFloat kBottomBtnH = 40.f;
static const CGFloat kAnimationViewH = 60.f;

@implementation HJAudioRecordView
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
    
    [self addSubview:self.recordBtn];
    
    [self addSubview:self.checkBtn];
    
    [self addSubview:self.deleteBtn];
    
    [self addSubview:self.animationView];
    
    self.recordBtn.backgroundColor = [UIColor blueColor];
    self.checkBtn.backgroundColor = [UIColor blueColor];
    self.deleteBtn.backgroundColor = [UIColor blueColor];
    self.animationView.backgroundColor = [UIColor blueColor];
    
    [self.recordBtn setTitle:@"录音" forState:UIControlStateNormal];
    [self.checkBtn setTitle:@"试听" forState:UIControlStateNormal];
    [self.deleteBtn setTitle:@"删除" forState:UIControlStateNormal];
    
    [self hj_layout];

}


- (void)hj_layout{
    
    [self.recordBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.height.mas_equalTo(kRecordBtnH);
        make.center.mas_equalTo(self);
    }];
    
    
    [self.checkBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.height.mas_equalTo(kBottomBtnH);
        make.top.mas_equalTo(margin);
        make.left.mas_equalTo(margin);
    }];
    
    [self.deleteBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.height.mas_equalTo(kBottomBtnH);
        make.left.mas_equalTo(margin);
        make.bottom.mas_equalTo(-margin);
    }];
    
    
    [self.animationView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(-margin);
        make.bottom.mas_equalTo(-margin);
        make.width.height.mas_equalTo(kAnimationViewH);
    }];
}


#pragma mark - Pravite Method

#pragma mark - Public Method

#pragma mark - Event response

#pragma mark - Delegate methods

#pragma mark - Getters/Setters/Lazy
- (UIButton *)recordBtn{
    if (!_recordBtn) {
        _recordBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _recordBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _recordBtn.layer.cornerRadius = kRecordBtnH/2.f;
        _recordBtn.layer.masksToBounds = YES;
        _recordBtn.layer.borderWidth = 1.f;
        _recordBtn.layer.borderColor = [UIColor lightGrayColor].CGColor;
    }
    return _recordBtn;
}

- (UIButton *)checkBtn{
    if (!_checkBtn) {
        _checkBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _checkBtn.layer.cornerRadius = kBottomBtnH/2.f;
        _checkBtn.layer.masksToBounds = YES;
        _checkBtn.layer.borderWidth = 1.f;
        _checkBtn.layer.borderColor = [UIColor lightGrayColor].CGColor;
    }
    return _checkBtn;
}

- (UIButton *)deleteBtn{
    if (!_deleteBtn) {
        _deleteBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _deleteBtn.layer.cornerRadius = kBottomBtnH/2.f;
        _deleteBtn.layer.masksToBounds = YES;
        _deleteBtn.layer.borderWidth = 1.f;
        _deleteBtn.layer.borderColor = [UIColor lightGrayColor].CGColor;
    }
    return _deleteBtn;
}


- (HJRecordingAnimationView *)animationView{
    if (!_animationView) {
        _animationView = [[HJRecordingAnimationView alloc] init];
    }
    return _animationView;
}


@end
