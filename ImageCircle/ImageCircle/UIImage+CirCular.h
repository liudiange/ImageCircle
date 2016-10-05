//
//  UIImage+CirCular.h
//  ImageCircle
//
//  Created by 刘殿阁 on 16/7/30.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (CirCular)
/**
 *  给一个图片加边框 ,传image的  还有待定图片大小的 若不想规定图片大小(要带小数点)，就传0.0
 *
 */
+(instancetype)setCircleImage:(UIImage*)currentImage withBorderWith:(CGFloat)borderWith withColor:(UIColor*)currentColor withImageWith:(CGFloat)imageWith;
@end
