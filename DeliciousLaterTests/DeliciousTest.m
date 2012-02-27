//
//  DeliciousTest.m
//  DeliciousLater
//
//  Created by jetspeed4 on 12-2-27.
//  Copyright 2012年 jetspeed4. All rights reserved.
//

#import "DeliciousTest.h"
#import "Delicious.h"

@implementation DeliciousTest

#if USE_APPLICATION_UNIT_TEST     // all code under test is in the iPhone Application

- (void)testAppDelegate {
    
    id yourApplicationDelegate = [[UIApplication sharedApplication] delegate];
    STAssertNotNil(yourApplicationDelegate, @"UIApplication failed to find the AppDelegate");
    
}

- (void)testGetBookmarks{
    Delicious *d = [[Delicious alloc] init];
    
    STAssertNotNil([d getBookmarks], @"result is not nil");
}

#else                           // all code under test must be linked into the Unit Test bundle

- (void)testMath {
    
    STAssertTrue((1+1)==2, @"Compiler isn't feeling well today :-(" );
    
}

#endif

@end
