//
//  ViewController.h
//  Respring
//
//  Created by Leonard Schuetz on 25.12.13.
//  Copyright (c) 2013 Leonard Schuetz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    IBOutlet UIImageView *background;
    IBOutlet UIButton *trigger_respring;
    IBOutlet UIView *trigger_respring_background;
}

@property UIImageView *background;
@property UIButton *trigger_respring;
@property UIView *trigger_respring_background;

-(IBAction)respring:(id)sender;

@end
