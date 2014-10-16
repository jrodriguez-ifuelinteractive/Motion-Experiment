//
//  OMPViewController.h
//  MotionExperiment
//
//  Created by Jesus Rodriguez on 5/15/14.
//  Copyright (c) 2014 omnipixel. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "OMPSocialOptionView.h"

@interface OMPViewController : UIViewController

@property (nonatomic) OMPSocialOptionView *facebook;
@property (nonatomic) OMPSocialOptionView *twitter;
@property (nonatomic) OMPSocialOptionView *email;

@property CGFloat centerIt;
@property CGFloat offsetCenterHeight;

@property BOOL isOpen;

@end
