//
//  YSCoreGraphicsUtilityExampleTests.m
//  YSCoreGraphicsUtilityExampleTests
//
//  Created by Yu Sugawara on 2014/06/15.
//  Copyright (c) 2014年 Yu Sugawara. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "YSCoreGraphicsUtility.h"

@interface YSCoreGraphicsUtilityExampleTests : XCTestCase

@end

@implementation YSCoreGraphicsUtilityExampleTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testPointToPoint
{
    CGPoint startPoint = CGPointMake(0.f, 0.f);
    CGPoint endPoint = CGPointMake(100.f, 100.f);
    
    CGPoint p = [YSCoreGraphicsUtility point:startPoint toPoint:endPoint atPercent:0.f];
    XCTAssertTrue(CGPointEqualToPoint(p, startPoint), @"p: %@", NSStringFromCGPoint(p));
    
    p = [YSCoreGraphicsUtility point:startPoint toPoint:endPoint atPercent:1.f];
    XCTAssertTrue(CGPointEqualToPoint(p, endPoint), @"p: %@", NSStringFromCGPoint(p));
    
    p = [YSCoreGraphicsUtility point:startPoint toPoint:endPoint atPercent:0.5f];
    XCTAssertTrue(CGPointEqualToPoint(p, CGPointMake(50.f, 50.f)), @"p: %@", NSStringFromCGPoint(p));
    
    p = [YSCoreGraphicsUtility point:startPoint toPoint:endPoint atPercent:0.8f];
    XCTAssertTrue(CGPointEqualToPoint(p, CGPointMake(80.f, 80.f)), @"p: %@", NSStringFromCGPoint(p));
    
    
    startPoint = CGPointMake(-100.f, -100.f);
    endPoint = CGPointMake(-200.f, -200.f);
    p = [YSCoreGraphicsUtility point:startPoint toPoint:endPoint atPercent:0.f];
    XCTAssertTrue(CGPointEqualToPoint(p, startPoint), @"p: %@", NSStringFromCGPoint(p));
    
    p = [YSCoreGraphicsUtility point:startPoint toPoint:endPoint atPercent:1.f];
    XCTAssertTrue(CGPointEqualToPoint(p, endPoint), @"p: %@", NSStringFromCGPoint(p));
    
    p = [YSCoreGraphicsUtility point:startPoint toPoint:endPoint atPercent:0.5f];
    XCTAssertTrue(CGPointEqualToPoint(p, CGPointMake(-150.f, -150.f)), @"p: %@", NSStringFromCGPoint(p));
    
    p = [YSCoreGraphicsUtility point:startPoint toPoint:endPoint atPercent:0.8f];
    XCTAssertTrue(CGPointEqualToPoint(p, CGPointMake(-180.f, -180.f)), @"p: %@", NSStringFromCGPoint(p));
}

@end
