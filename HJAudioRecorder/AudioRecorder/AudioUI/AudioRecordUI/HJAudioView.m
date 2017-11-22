//
//  HJAudioView.m
//  HJAudioRecorder
//
//  Created by WHJ on 2017/11/22.
//  Copyright © 2017年 WHJ. All rights reserved.
//

#import "HJAudioView.h"
#import "HJAudioCheckView.h"
#import "HJAudioRecordView.h"


@interface HJAudioView ()

/** 录音视图 */
@property (nonatomic, strong) HJAudioRecordView  *recordView;
/** 试听视图 */
@property (nonatomic, strong) HJAudioRecordView  *checkView;

@end


@implementation HJAudioView

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
    
    
    self.backgroundColor = [UIColor yellowColor];
    
    [self addSubview:self.recordView];
    
    [self.recordView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(0);
    }];
}

#pragma mark - Pravite Method

#pragma mark - Public Method

#pragma mark - Event response

#pragma mark - Delegate methods

#pragma mark - Getters/Setters/Lazy
- (HJAudioRecordView *)recordView{
    if (!_recordView) {
        _recordView = [[HJAudioRecordView alloc] init];
    }
    return _recordView;
}

@end
