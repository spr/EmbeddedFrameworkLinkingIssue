//
//  library.m
//  library
//
//  Created by Scott Robertson on 10/17/15.
//  Copyright © 2015 Scott Paul Robertson. All rights reserved.
//

#import "library.h"

#import "Test.h"

@implementation Library

- (BOOL)confirmAllSystemsGo {
    if (![NSClassFromString(@"TestClass") working]) {
        NSLog(@"Not working yet.");
        return NO;
    }

    id tc = [[NSClassFromString(@"TestClass") alloc] init];
    return [tc objectExists];
}

@end
