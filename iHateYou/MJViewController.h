//
//  MJViewController.h
//  iHateYou
//
//  Created by Mike Jewett on 10/16/13.
//  Copyright (c) 2013 Mike Jewett. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MJIHateYou;

@interface MJViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *insultLabel;
@property (strong, nonatomic) MJIHateYou *iHateYou;

@end
