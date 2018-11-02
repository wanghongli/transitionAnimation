//
//  GHTransitionAnimation.m
//  transportAnimation
//
//  Created by sunrise on 2018/11/2.
//  Copyright © 2018 sunriseos. All rights reserved.
//

#import "GHTransitionAnimation.h"

#define kScreenWidth [UIScreen mainScreen].bounds.size.width
#define kScreenHeight [UIScreen mainScreen].bounds.size.height

@implementation GHTransitionAnimation

- (NSTimeInterval)transitionDuration:(id<UIViewControllerContextTransitioning>)transitionContext{
    return 0.5;
}

- (void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext{
    UIViewController *toVC = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    
    UIViewController *fromVC = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    
    UIView *toView = nil;
    UIView *fromView = nil;
    
    if ([transitionContext respondsToSelector:@selector(viewForKey:)]) {
        fromView = [transitionContext viewForKey:UITransitionContextFromViewKey];
        toView = [transitionContext viewForKey:UITransitionContextToViewKey];
    } else {
        fromView = fromVC.view;
        toView = toVC.view;
    }
    /** containView */
    UIView *containView = [transitionContext containerView];
    [containView addSubview:toView];
    
    UIImageView *imageView = [toView subviews].firstObject;
    imageView.frame = CGRectMake(0, 64, 0, 0);
//    UIView *view = [toView subviews].lastObject;
    UIView *view = [toView viewWithTag:22];
    view.frame = CGRectMake(0, kScreenHeight  - 64, kScreenWidth, 50);
    CGFloat width = [UIScreen mainScreen].bounds.size.width;
    CGFloat height = [UIScreen mainScreen].bounds.size.height;
    [containView addSubview:imageView];
    toView.frame = CGRectMake(0, 64, 0, 0);
    [UIView animateWithDuration:[self transitionDuration:transitionContext] animations:^{
        //        view.frame = CGRectMake(0, kScreenHeight - 50 - 64, kScreenWidth, 50);
        
        toView.frame = CGRectMake(0, 64, width, kScreenHeight);
        imageView.frame = CGRectMake(0, 64, kScreenWidth, 220);
        view.frame = CGRectMake(0, kScreenHeight - 50 - 64, kScreenWidth, 50);
    } completion:^(BOOL finished) {
        [transitionContext completeTransition:YES];
    }];
}

@end
