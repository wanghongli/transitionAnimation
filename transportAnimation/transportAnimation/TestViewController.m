//
//  TestViewController.m
//  transportAnimation
//
//  Created by sunrise on 2018/11/2.
//  Copyright © 2018 sunriseos. All rights reserved.
//

#import "TestViewController.h"

@interface TestViewController ()

@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    // Do any additional setup after loading the view.
    
    UIImageView *imageView = [[UIImageView alloc]init];
    imageView.image = [UIImage imageNamed:@"IMG_0001"];
    imageView.frame = CGRectMake(0, 64, kScreenWidth, 220);
    imageView.tag = 10;
    [self.view addSubview:imageView];
    self.view.backgroundColor = [UIColor redColor];
    
    UIView *bottomView = [[UIView alloc]init];
    bottomView.frame = CGRectMake(0, kScreenHeight - 50 - 64, kScreenWidth, 50);
    [bottomView setTag:22];
    bottomView.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:bottomView];
    
    
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
