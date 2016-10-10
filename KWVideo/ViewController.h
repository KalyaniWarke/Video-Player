//
//  ViewController.h
//  KWVideo
//
//  Created by Kalyani on 10/10/16.
//  Copyright © 2016 kalyani Warke. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
@interface ViewController : UIViewController
{
    AVPlayer *player;
    AVPlayerLayer *movieplayerLayer;
    NSURL *fileURL;
}
@property (strong, nonatomic) IBOutlet UIView *videoView;
- (IBAction)actionPlayPause:(id)sender;


- (IBAction)actionStop:(id)sender;

@end

