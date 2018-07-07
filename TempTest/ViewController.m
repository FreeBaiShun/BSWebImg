//
//  ViewController.m
//  TempTest
//
//  Created by yuYue on 2018/7/7.
//  Copyright © 2018年 yuYue. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+BSGIF.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    NSString  *filePath = [[NSBundle bundleWithPath:[[NSBundle mainBundle] bundlePath]]pathForResource:@"loading" ofType:@"gif"];
    
    NSData  *imageData = [NSData dataWithContentsOfFile:filePath];
    
    UIImage *img = [UIImage bs_animatedGIFWithData:imageData];
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 300, 300)];
    imageView.image = img;
    [self.view addSubview:imageView];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end











