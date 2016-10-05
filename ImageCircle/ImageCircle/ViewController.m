//
//  ViewController.m
//  ImageCircle
//
//  Created by 刘殿阁 on 16/7/30.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+CirCular.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *smallImageView;
@property (weak, nonatomic) IBOutlet UIImageView *bigImageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImage* imageName = [UIImage imageNamed:@"1.jpg"];
    self.smallImageView.image = [UIImage setCircleImage:imageName withBorderWith:3.0 withColor:[UIColor redColor] withImageWith:64];
    self.bigImageView.image = [UIImage setCircleImage:imageName withBorderWith:10 withColor:[UIColor redColor] withImageWith:0];
    
}

@end
