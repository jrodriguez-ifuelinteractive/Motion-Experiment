//
//  OMPSocialOptionView.m
//  MotionExperiment
//
//  Created by Jesus Rodriguez on 5/15/14.
//  Copyright (c) 2014 omnipixel. All rights reserved.
//

#import "OMPSocialOptionView.h"

@implementation OMPSocialOptionView

@synthesize borderColor;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.layer.shadowColor = [[UIColor blackColor] CGColor];
        self.layer.shadowOffset = CGSizeMake(4.0f,4.0f);
        self.layer.shadowOpacity = .5f;
        self.layer.shadowRadius = 6.0f;
    }
    return self;
}

// Set color
- (void)setColorWithRed:(float)red Green:(float)green Blue:(float)blue
{
    borderColor = [UIColor colorWithRed:red/255 green:green/255 blue:blue/255 alpha:1.0f];
    [self setBackgroundColor:borderColor];
    [[self layer] setBorderColor: borderColor.CGColor];
    [[self layer] setBorderWidth: 1.0f];
    [[self layer] setCornerRadius: self.frame.size.width / 2];
}

- (void)facebookButton
{
    UIImageView *image = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"facebook_fill"]];
    [image setFrame: CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
    [image setCenter: CGPointMake(self.frame.size.width / 2, self.frame.size.height / 2)];
    [self addSubview:image];
}

- (void)twitterButton
{
    UIImageView *image = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"twitter_fill"]];
    [image setFrame: CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
    [image setCenter: CGPointMake(self.frame.size.width / 2, self.frame.size.height / 2)];
    [self addSubview:image];
}

- (void)googleplusButton
{
    UIImageView *image = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"googleplus_fill"]];
    [image setFrame: CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
    [image setCenter: CGPointMake(self.frame.size.width / 2, self.frame.size.height / 2)];
    [self addSubview:image];
}

- (void)withBorder
{
    [[self layer] setBorderColor: [UIColor blackColor].CGColor];
    [[self layer] setBorderWidth: 1.0f];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
