//
//  TAPresentDetailTransition.m
//  PhotoBombers
//
//  Created by Harish Upadhyayula on 5/21/14.
//  Copyright (c) 2014 tensor apps. All rights reserved.
//

#import "TAPresentDetailTransition.h"

@implementation TAPresentDetailTransition

- (NSTimeInterval)transitionDuration:(id<UIViewControllerContextTransitioning>)transitionContext{
    
    return 0.3;
}

- (void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext{
    
    UIViewController *detail = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    
    UIView *containerView = [transitionContext containerView];
    CGRect frame = containerView.bounds;
    frame.origin.y += 20.0;
    frame.size.height -= 20.0;
    detail.view.alpha = 0.0;
    detail.view.frame = frame;
    [containerView addSubview:detail.view];
    
    [UIView animateWithDuration:0.3 animations:^{detail.view.alpha = 1.0;} completion:^(BOOL finished) {
        [transitionContext completeTransition:YES];
    }];
}

@end
