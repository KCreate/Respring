//
//  ViewController.m
//  Respring
//
//  Created by Leonard Schuetz on 25.12.13.
//  Copyright (c) 2013 Leonard Schuetz. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController
@synthesize background;
@synthesize trigger_respring;
@synthesize trigger_respring_background;

-(BOOL)prefersStatusBarHidden{
    return YES;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //Configure the background
    background.image = [UIImage imageNamed:@"wallpaper.png"];
    background.alpha = 0;
    
    //Configure the button
    trigger_respring.alpha = 0;
    
    //Configure the background of the button
    trigger_respring_background.backgroundColor = [UIColor blackColor];
    trigger_respring_background.alpha = 0;
    
    //Start an animation which shows the background and the button in a nice animation
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.6];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseOut];
        background.alpha = 1;
        trigger_respring.alpha = 1;
        trigger_respring_background.alpha = 0.4;
    [UIView commitAnimations];
}

-(IBAction)respring:(id)sender {
    //Kill the Springboard proccess. This causes a "respring"
    
    //Configure the AlertView
    UIAlertView *alertview = [[UIAlertView alloc] initWithTitle:@"Respring"
                                                        message:@"Are you sure you want to respring?"
                                                       delegate:self cancelButtonTitle:@"No!"
                                              otherButtonTitles:@"Yes!", nil];
    [alertview show];
}

- (void)alertView:(UIAlertView *)choose_network_for_share clickedButtonAtIndex:(NSInteger)buttonIndex {
    if (buttonIndex == 1) {
        [self respring];
    }
}

-(void)respring {
    //Respring the device
    system("killall SpringBoard");
}

@end