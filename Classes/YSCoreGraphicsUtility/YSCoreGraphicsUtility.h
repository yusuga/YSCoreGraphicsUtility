//
//  YSCoreGraphicsUtility.h
//  YSCoreGraphicsUtilityExample
//
//  Created by Yu Sugawara on 2014/06/15.
//  Copyright (c) 2014年 Yu Sugawara. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface YSCoreGraphicsUtility : NSObject

+ (CGPoint)point:(CGPoint)startPoint toPoint:(CGPoint)endPoint atPercent:(CGFloat)percent;
+ (CGSize)size:(CGSize)startSize toSize:(CGSize)endSize atPercent:(CGFloat)percent;

@end
