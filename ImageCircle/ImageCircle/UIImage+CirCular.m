//
//  UIImage+CirCular.m
//  ImageCircle
//
//  Created by 刘殿阁 on 16/7/30.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "UIImage+CirCular.h"

@implementation UIImage (CirCular)
+(instancetype)setCircleImage:(UIImage*)currentImage withBorderWith:(CGFloat)borderWith withColor:(UIColor*)currentColor withImageWith:(CGFloat)imageWith
{
    CGFloat graphicsW;
    if (imageWith <= 0) {
        graphicsW = currentImage.size.width> currentImage.size.height? currentImage.size.height + borderWith*2.0  : currentImage.size.width + borderWith*2.0;
    }else
    {
        graphicsW = currentImage.size.width> currentImage.size.height? currentImage.size.width  : currentImage.size.height;
        borderWith = (graphicsW/imageWith)*borderWith;
        graphicsW = currentImage.size.width> currentImage.size.height? currentImage.size.height + borderWith*2.0 : currentImage.size.width + borderWith*2.0;
    }
    //画大圆
    UIGraphicsBeginImageContext(CGSizeMake(graphicsW, graphicsW));
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    UIBezierPath* path = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(0, 0, graphicsW, graphicsW)];
    [currentColor set];
    CGContextAddPath(ctx, path.CGPath);
    CGContextFillPath(ctx);
    
    CGFloat currentImageW;
    //画小圆
    currentImageW = currentImage.size.width > currentImage.size.height ? currentImage.size.height : currentImage.size.width;
    UIBezierPath* path1 = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(borderWith, borderWith, currentImageW, currentImageW)];
    [path1 addClip];
    [currentImage drawInRect:CGRectMake(borderWith, borderWith, currentImageW, currentImageW)];
    UIImage* newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return newImage;
}

@end
