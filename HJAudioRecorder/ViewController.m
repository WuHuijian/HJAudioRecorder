//
//  ViewController.m
//  HJAudioRecorder
//
//  Created by WHJ on 2017/11/13.
//  Copyright © 2017年 WHJ. All rights reserved.
//

#import "ViewController.h"
#import "HJAudioView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    HJAudioView *audioV = [[HJAudioView alloc] init];
    [self.view addSubview:audioV];
    
    [audioV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.bottom.mas_equalTo(0);
        make.height.mas_equalTo(200);
    }];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
