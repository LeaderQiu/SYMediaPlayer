//
//  ViewController.m
//  SYMeidaPlayer
//
//  Created by wangshiyu13 on 15/4/29.
//  Copyright (c) 2015年 wangshiyu13. All rights reserved.
//

#import "ViewController.h"
#import "SYVideoPlayerViewController.h"

@interface ViewController ()
@property (nonatomic, strong) SYVideoPlayerViewController *videoVC;
@end

@implementation ViewController

- (SYVideoPlayerViewController *)videoVC {
    if (_videoVC == nil) {
        UIStoryboard *sb = [UIStoryboard storyboardWithName:@"SYVideoPlayerView" bundle:nil];
        _videoVC = sb.instantiateInitialViewController;
        [_videoVC playVideoWithTitle:@"我勒个槽啊" URL:[NSURL URLWithString:@"http://ignhdvod-f.akamaihd.net/i/assets.ign.com/videos/zencoder/,416/d4ff0368b5e4a24aee0dab7703d4123a-110000,640/d4ff0368b5e4a24aee0dab7703d4123a-500000,640/d4ff0368b5e4a24aee0dab7703d4123a-1000000,960/d4ff0368b5e4a24aee0dab7703d4123a-2500000,1280/d4ff0368b5e4a24aee0dab7703d4123a-3000000,-1354660143-w.mp4.csmil/master.m3u8"] videoID:@"0001" shareURL:nil isStreaming:YES playInFullScreen:NO];
    }
    return _videoVC;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn addTarget:self action:@selector(playVideo) forControlEvents:UIControlEventTouchUpInside];
    btn.frame = CGRectMake(300, 200, 200, 40);
    btn.backgroundColor = [UIColor redColor];
    [self.view addSubview:btn];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)playVideo {
    [self addChildViewController:self.videoVC];
    self.videoVC.view.frame = CGRectMake(0, 100, self.view.frame.size.width, 250);
    [self.view addSubview:self.videoVC.view];
}

//- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation {
//    return UIInterfaceOrientationPortrait;
//}

//- (BOOL)shouldAutorotate {
//    return NO;
//}
@end
