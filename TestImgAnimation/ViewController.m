//
//  ViewController.m
//  TestImgAnimation
//
//  Created by baoyewei on 2017/1/1.
//  Copyright © 2017年 baoyewei. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong) UIImageView *img1;

@end

@implementation ViewController


- (void)viewWillAppear:(BOOL)animated{
    
    [super viewWillAppear:animated];
    
    [self.img1 startAnimating];
    NSLog(@"viewWillAppear 111111");
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIImageView *imgView = [[UIImageView alloc] init];
    imgView.backgroundColor = [UIColor orangeColor];
    imgView.frame = CGRectMake(100, 200, 50, 50);
    [self.view addSubview:imgView];
    NSArray *imgs = @[[UIImage imageNamed:@"img1"],[UIImage imageNamed:@"img2"]];
    imgView.image = [UIImage animatedImageWithImages:imgs duration:0.5];
    
    
    
    UIImageView *imgView1 = [[UIImageView alloc] init];
    imgView1.backgroundColor = [UIColor orangeColor];
    imgView1.frame = CGRectMake(100, 300, 50, 50);
    [self.view addSubview:imgView1];
    NSArray *imgs1 = @[[UIImage imageNamed:@"img1"],[UIImage imageNamed:@"img2"]];
    [imgView1 setAnimationImages:imgs1];
    [imgView1 setAnimationDuration:1];
    [imgView1 setAnimationRepeatCount:HUGE_VAL];
    [imgView1 startAnimating];
    self.img1 = imgView1;
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
