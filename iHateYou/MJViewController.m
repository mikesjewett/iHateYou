//
//  MJViewController.m
//  iHateYou
//
//  Created by Mike Jewett on 10/16/13.
//  Copyright (c) 2013 Mike Jewett. All rights reserved.
//

#import "MJViewController.h"
#import "MJIHateYou.h"

@interface MJViewController ()

@end

@implementation MJViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.iHateYou = [[MJIHateYou alloc] init];
//    UIImage *backgroundImage = [UIImage imageNamed:@"background"];
//    UIImageView *imageView = [[UIImageView alloc] initWithImage:backgroundImage];
//    [self.view insertSubview:imageView atIndex:0];
}

//- (void) viewDidAppear:(BOOL)animated {
//    [super viewDidAppear:animated];
//
//    CGRect frame = self.insultLabel.frame;
//    self.insultLabel.frame = CGRectMake(frame.origin.x, frame.origin.y, frame.size.width, frame.size.height);
//}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    self.insultLabel.text = nil;
}

- (void) motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    if (motion == UIEventSubtypeMotionShake) {
        self.insultLabel.text = [self.iHateYou randomInsult];
    }
}
- (void) motionCancelled:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    NSLog(@"motion cancelled");
}

- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    self.insultLabel.text = nil;
}

- (void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    self.insultLabel.text = [self.iHateYou randomInsult];
}

- (void) touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event {
    NSLog(@"touches cancelled");
}

@end
