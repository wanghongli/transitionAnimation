//
//  ViewController.m
//  transportAnimation
//
//  Created by sunrise on 2018/11/2.
//  Copyright © 2018 sunriseos. All rights reserved.
//

#import "ViewController.h"
#import "GHTransitionAnimation.h"
#import "TestViewController.h"

@interface ViewController () <UINavigationControllerDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.view setBackgroundColor:[UIColor whiteColor]];
    self.navigationController.delegate = self;
}

- (id)navigationController:(UINavigationController *)navigationController animationControllerForOperation:(UINavigationControllerOperation)operation fromViewController:(UIViewController *)fromVC toViewController:(UIViewController *)toVC{
    if (operation == UINavigationControllerOperationPush) {
        return [[GHTransitionAnimation alloc] init];
    }
    
    return nil;
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    NSLog(@"aaa");
    [self.navigationController pushViewController:[[TestViewController alloc] init] animated:YES];
    
}


@end
