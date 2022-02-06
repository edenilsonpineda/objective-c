//
//  header.h
//  objective-c
//
//  Created by Edenilson Pineda on 5/2/22.
//


/*
 * Properties are used to provide access to class instance variables in other classes.
 *
 * - assign : It’s used to assign a new value to the property anytime
 * - nonatomic : Thread access is faster. But we cannot simultaneously access and change the value
 * - readonly : We cannot directly assign new values to these properties
 * - copy : The value assigned to the property can be copied and used for other purposes
 * - readwrite : We can read and change the value of a property
 * - strong : We have direct control over the lifetime of the property
 * - weak : We can nullify the property and so can the compiler
*/
#import <Foundation/Foundation.h>

@interface BMI : NSObject
{
    int weight; // The instance variables of the class object are defined in curly braces.
}

@property(nonatomic, readwrite) double height;

-(double) bmi; //Method
@end
