//
//  ViewController.m
//  TBVideoPlayer
//
//  Created by hanchuangkeji on 2017/12/7.
//  Copyright © 2017年 hanchuangkeji. All rights reserved.
//

#import "ViewController.h"
#import "VideoPlayView.h"


@interface ViewController ()<VideoPlayViewDelegate>

@property (nonatomic, weak) VideoPlayView *playView;

@property (weak, nonatomic) IBOutlet UIView *imageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.imageView.userInteractionEnabled = YES;
    VideoPlayView *viewPlayView = [VideoPlayView videoPlayView];
    viewPlayView.frame = self.imageView.bounds;
    [self.imageView addSubview:viewPlayView];
    viewPlayView.delegate = self;
    self.playView = viewPlayView;
}

- (IBAction)btnClick:(id)sender {
    
    AVPlayerItem *item = [AVPlayerItem playerItemWithURL:[NSURL URLWithString:@"http://wvideo.spriteapp.cn/video/2016/0328/56f8ec01d9bfe_wpd.mp4"]];
    [self.playView setPlayerItem:item];
}


@end
