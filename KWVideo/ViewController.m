//
//  ViewController.m
//  KWVideo
//
//  Created by Kalyani on 10/10/16.
//  Copyright © 2016 kalyani Warke. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    fileURL =[[NSBundle mainBundle]URLForResource:@"carVideo" withExtension:@"mp4"];
    player = [[AVPlayer alloc]initWithURL:fileURL];
    
    movieplayerLayer = [AVPlayerLayer playerLayerWithPlayer:player];
    

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)actionPlayPause:(id)sender {
    
    UIButton *button =sender;
    
    if (button.tag == 0) {
        //play
        button.tag = 1;
        
        [movieplayerLayer setFrame:_videoView.bounds];
      
        [self.videoView.layer addSublayer:movieplayerLayer];
        
        self.videoView.clipsToBounds = YES;
        [player play];
    }
    else if (button.tag == 1) {
        //pause
        button.tag = 0;
        [player pause];
    }
    
   }

    



 - (IBAction)actionStop:(id)sender {
    
     [player pause];

     player = [[AVPlayer alloc]initWithURL:fileURL];
     
     movieplayerLayer = [AVPlayerLayer playerLayerWithPlayer:player];
     
}
@end
