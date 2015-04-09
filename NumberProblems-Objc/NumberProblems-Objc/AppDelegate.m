//
//  AppDelegate.m
//  NumberProblems-Objc
//
//  Created by Joshua Howland on 8/14/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

int multiple = 8;
float divisor = 6.0;
            

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    // Insert code here...
    
    [self iterateCount:4];
    
    
    return YES;
}

-(void)iterateCount:(int)x
{
    for (int y = x; y>0; --y) {
        
        int var1 = [self multiplied:y];
        NSLog(@"Multiplied %d by %d to get %d\n", y, multiple, var1);
        
        float var2 = [self divided:var1];
        NSLog(@"Divided %d by %.2f to get %.2f\n", var1, divisor, var2);
    }
    
    
    
}

-(float)multiplied:(float)z
{
    z *= multiple;
    
    return z;
}

-(float)divided:(float)q
{
    q /= divisor;
    
    return q;
}

@end
