//
//  YSCoreGraphicsUtility.m
//  YSCoreGraphicsUtilityExample
//
//  Created by Yu Sugawara on 2014/06/15.
//  Copyright (c) 2014年 Yu Sugawara. All rights reserved.
//

#import "YSCoreGraphicsUtility.h"

@implementation YSCoreGraphicsUtility

+ (CGPoint)point:(CGPoint)startPoint toPoint:(CGPoint)endPoint atPercent:(CGFloat)percent
{
    if (percent < 0.f) percent = 0.f;
    if (percent > 1.f) percent = 1.f;
    
    CGFloat width = endPoint.x - startPoint.x;
    CGFloat height = endPoint.y - startPoint.y;
    
    return CGPointMake(startPoint.x + width*percent, startPoint.y + height*percent);
}

@end
