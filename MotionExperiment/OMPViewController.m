//
//  OMPViewController.m
//  MotionExperiment
//
//  Created by Jesus Rodriguez on 5/15/14.
//  Copyright (c) 2014 omnipixel. All rights reserved.
//

#import "OMPViewController.h"

@interface OMPViewController ()

@end

@implementation OMPViewController

@synthesize facebook, twitter, email;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.isOpen = NO;
    
    UILongPressGestureRecognizer *longPress = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(longPress:)];
    [self.view addGestureRecognizer:longPress];
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapMethod:)];
    [self.view addGestureRecognizer:tap];
    
    self.centerIt = self.view.frame.size.width / 2;
    self.offsetCenterHeight = (self.view.frame.size.height / 2) - 80;

    
    
	// Do any additional setup after loading the view, typically from a nib.
    facebook = [[OMPSocialOptionView alloc] initWithFrame:CGRectMake(0, self.view.frame.size.height, 60, 60)];
    [facebook facebookButton];
    twitter = [[OMPSocialOptionView alloc] initWithFrame:CGRectMake(0, self.view.frame.size.height, 60, 60)];
    [twitter twitterButton];
    email = [[OMPSocialOptionView alloc] initWithFrame:CGRectMake(0, self.view.frame.size.height, 60, 60)];
    [email googleplusButton];
    
    //RGB: 0, 172, 237
    [twitter setColorWithRed:0.0f Green:172.0f Blue:237.0f];
    
    //RGB: 59, 89, 152
    [facebook setColorWithRed:59.0f Green:89.0f Blue:152.0f];
    
    //RGB: 221, 75, 57
    [email setColorWithRed:221.0f Green:75.0f Blue:57.0f];
    
    [self addShareViews];

}

- (void)tapMethod:(UITapGestureRecognizer *)gesture
{
    if (self.isOpen) {
    [UIView animateWithDuration:0.24f
                          delay:0.0f
                        options:UIViewAnimationCurveEaseOut
                     animations:^{
                         [twitter setCenter: CGPointMake(self.centerIt - 80, self.view.frame.size.height + 60)];
                     }
                     completion:^(BOOL finished){
                         self.isOpen = NO;
                     }
     ];
    
    [UIView animateWithDuration:0.3f
                          delay:0.02f
                        options:UIViewAnimationCurveEaseOut
                     animations:^{
                         [facebook setCenter: CGPointMake(self.centerIt, self.view.frame.size.height + 60)];
                     }
                     completion:^(BOOL finished){
                        self.isOpen = NO;
                     }
     ];
    
    [UIView animateWithDuration:0.5f
                          delay:0.01f
                        options:UIViewAnimationCurveEaseOut
                     animations:^{
                         [email setCenter: CGPointMake(self.centerIt + 80, self.view.frame.size.height + 60)];
                     }
                     completion:^(BOOL finished){
                         self.isOpen = NO;
                     }
     ];
    }
}

- (void)longPress:(UILongPressGestureRecognizer*)gesture {
    if ( gesture.state == UIGestureRecognizerStateEnded ) {
        NSLog(@"Long Press Ended");
    }
    
    if (gesture.state == UIGestureRecognizerStateBegan) {
        if (self.isOpen == NO) {
        [UIView animateWithDuration:0.24f
                              delay:0.0f
                            options:UIViewAnimationCurveEaseIn
                         animations:^{
                            [twitter setCenter: CGPointMake(self.centerIt - 80, self.offsetCenterHeight)];
                         }
                         completion:^(BOOL finished){
                             self.isOpen = YES;
                         }
         ];
        
        [UIView animateWithDuration:0.3f
                              delay:0.02f
                            options:UIViewAnimationCurveEaseIn
                         animations:^{
                             [facebook setCenter: CGPointMake(self.centerIt, self.offsetCenterHeight)];
                         }
                         completion:^(BOOL finished){
                             self.isOpen = YES;
                         }
         ];
        
        [UIView animateWithDuration:0.5f
                              delay:0.01f
                            options:UIViewAnimationCurveEaseIn
                         animations:^{
                             [email setCenter: CGPointMake(self.centerIt + 80, self.offsetCenterHeight)];
                         }
                         completion:^(BOOL finished){
                             self.isOpen = YES;
                         }
         ];
        }
    }
}

- (void)addShareViews
{
    [twitter setCenter: CGPointMake(self.centerIt - 80, self.view.frame.size.height + 60)];
    [facebook setCenter: CGPointMake(self.centerIt, self.view.frame.size.height + 60)];
    [email setCenter: CGPointMake(self.centerIt + 80, self.view.frame.size.height + 60)];
    
    [self.view addSubview:facebook];
    [self.view addSubview:twitter];
    [self.view addSubview:email];
}

- (void)animateTo
{
    [twitter setCenter: CGPointMake(self.centerIt - 80, self.offsetCenterHeight)];
    [facebook setCenter: CGPointMake(self.centerIt, self.offsetCenterHeight)];
    [email setCenter: CGPointMake(self.centerIt + 80, self.offsetCenterHeight)];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
