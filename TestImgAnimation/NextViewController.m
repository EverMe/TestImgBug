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

- (void)viewWillAppear:(BOOL)animated{
    
    [super viewWillAppear:animated];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    //Swipe back but the finger not left screen , the image dismiss both viewController and NextViewController.
    //in the moment the finger left screen , evething return to normal.
    
    UIImageView *imgView = [[UIImageView alloc] init];
    imgView.backgroundColor = [UIColor orangeColor];
    imgView.frame = CGRectMake(20, 100, 50, 50);
    [self.view addSubview:imgView];
    NSArray *imgs = @[[UIImage imageNamed:@"img1"],[UIImage imageNamed:@"img2"]];
    imgView.image = [UIImage animatedImageWithImages:imgs duration:0.5];
    
    
    //SDWebImage  UIImage+GIF.m  UIImage create with animatedImageWithImages
    //So sdImgView has the bug too . but it will display placeholderImage.this is the other problem I don't understand.
    
    UIImageView *sdImgView = [[UIImageView alloc] initWithFrame:CGRectMake(20, 200, 150, 150)];
    sdImgView.backgroundColor = [UIColor cyanColor];
    [sdImgView sd_setImageWithURL:[NSURL URLWithString:@"https://d13yacurqjgara.cloudfront.net/users/288987/screenshots/1913272/depressed-slurp-cycle.gif"] placeholderImage:[UIImage imageNamed:@"default"]];
    [self.view addSubview:sdImgView];
    

    //UIWebView Normal
    UIWebView *webView = [[UIWebView alloc] initWithFrame:CGRectMake(20, 400, 240, 300)];
    webView.backgroundColor = [UIColor cyanColor];
    [webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://s1.dwstatic.com/group1/M00/C6/34/c66629cb698f6522479b193a0de7913c.gif"]]];
    [self.view addSubview:webView];
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
