//
//  main.m
//  objective-c
//
//  Created by Edenilson Pineda on 5/2/22.
//

#import <Foundation/Foundation.h>
#import "main.h"

@implementation BMI

@synthesize height; // @synthesize directive creates a getter and a setter for the variable.

- (id) init // init is the default initialisation method of Objective-C.
{
    self = [super init];
    weight = 68;
    return self;
}

- (double) bmi
{
    return weight/(height*height);
}
@end


int main(int argc, const char * argv[]) {
    
    // @autoreleasepool is part of the memory management model used by Cocoa Touch Platform.
    // this is part of the Automated Reference Counting (ARC)
    // see:
    // https://subscription.packtpub.com/book/application-development/9781849697125/3/ch03lvl1sec21/understanding-the-autorelease-pool-mechanism
    
    @autoreleasepool {
        // insert code here...
        BMI *person = [[BMI alloc] init];
        double result = 0.0;
        
        person.height = 1.7575;
        result = [person bmi];
        
        NSLog(@"Hi, I've developed a simple program in objective-c!");
        NSLog(@"BMI of Person is: %f", result);
    }
    
    return 0;
}
