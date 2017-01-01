//
//  NextViewController.m
//  TestImgAnimation
//
//  Created by baoyewei on 2017/1/1.
//  Copyright © 2017年 baoyewei. All rights reserved.
//

#import "NextViewController.h"
#import <UIImageView+WebCache.h>

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
    
    
    //SDWebImage  UIImage+GIF.m  UIImage create with animatedImageWithImages
    //So sdImgView has the bug too.
    
    UIImageView *sdImgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 350, 150, 150)];
    sdImgView.backgroundColor = [UIColor cyanColor];
    [sdImgView sd_setImageWithURL:[NSURL URLWithString:@"https://d13yacurqjgara.cloudfront.net/users/288987/screenshots/1913272/depressed-slurp-cycle.gif"] placeholderImage:[UIImage imageNamed:@"default"]];
    [self.view addSubview:sdImgView];
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
