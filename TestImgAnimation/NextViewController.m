//
//  NextViewController.m
//  TestImgAnimation
//
//  Created by baoyewei on 2017/1/1.
//  Copyright © 2017年 baoyewei. All rights reserved.
//

#import "NextViewController.h"

@interface NextViewController ()

@end

@implementation NextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    //Swipe back but the finger not left screen , the image dismiss both viewController and NextViewController.
    //in the moment the finger left screen , evething return to normal.
    
    UIImageView *imgView = [[UIImageView alloc] init];
    imgView.backgroundColor = [UIColor orangeColor];
    imgView.frame = CGRectMake(20, 200, 50, 50);
    [self.view addSubview:imgView];
    NSArray *imgs = @[[UIImage imageNamed:@"img1"],[UIImage imageNamed:@"img2"]];
    imgView.image = [UIImage animatedImageWithImages:imgs duration:0.5];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
