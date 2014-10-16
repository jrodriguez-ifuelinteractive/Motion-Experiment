//
//  OMPSocialOptionView.h
//  MotionExperiment
//
//  Created by Jesus Rodriguez on 5/15/14.
//  Copyright (c) 2014 omnipixel. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface OMPSocialOptionView : UIView

@property UIColor *borderColor;

- (void)setColorWithRed:(float)red Green:(float)green Blue:(float)blue;

- (void)withBorder;

- (void)facebookButton;

- (void)twitterButton;

- (void)googleplusButton;

@end
