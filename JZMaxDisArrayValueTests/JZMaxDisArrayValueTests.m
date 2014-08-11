//
//  JZMaxDisArrayValueTests.m
//  JZMaxDisArrayValueTests
//
//  Created by jihong zhang on 8/9/14.
//  Copyright (c) 2014 JZ. All rights reserved.
//
#import <SenTestingKit/SenTestingKit.h>
#import <OCHamcrestIOS/OCHamcrestIOS.h>
#import "JZMaxDisArrayValueTests.h"


@implementation JZMaxDisArrayValueTests

- (void)setUp
{
    [super setUp];
    // Set-up code here.
    self.testJZViewController =  [[JZViewController alloc] init];
}

- (void)tearDown
{
    // Tear-down code here.
    self.testJZViewController = nil;
    [super tearDown];
}


- (void)testMaxDisArrayValue
{
    //assertThat([self.testJZViewController textArrayInput], is(notNilValue()));
    //assertThat([self.testJZViewController lableMaxSum], is(notNilValue()));
    
    NSArray *testArray = @[@"20", @"10", @"50", @"5", @"1"];
    STAssertEquals([self.testJZViewController maxDisArrayValueFor:testArray], 71, @"The max value of the array is incorrect");
    
    NSArray *testArray2 = @[@"20",@"50",@"10",@"1",@"5"];
    STAssertEquals([self.testJZViewController maxDisArrayValueFor:testArray2], 55, @"The max value of the array is incorrect");
}

@end
