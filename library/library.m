//
//  library.m
//  library
//
//  Created by Scott Robertson on 10/17/15.
//  Copyright © 2015 Scott Paul Robertson. All rights reserved.
//

#import "library.h"

#import "Test.h"

#import <dlfcn.h>

@implementation Library

- (BOOL)confirmAllSystemsGo {
    void *dlhandle = dlopen("Test.framework/Test", RTLD_LAZY|RTLD_LOCAL);
    if (![NSClassFromString(@"TestClass") working]) {
        NSLog(@"Not working yet.");
        return NO;
    }

    id tc = [[NSClassFromString(@"TestClass") alloc] init];
    dlclose(dlhandle);
    return [tc objectExists];
}

@end
