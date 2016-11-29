//
//  Jobbie.h
//  usecpp
//
//  Created by Richard Hodges on 29/11/2016.
//  Copyright © 2016 Richard Hodges. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Jobbie : NSObject

@property (nonatomic, getter=getName, setter=setName:) NSString* name;

-(NSString*) getName;

-(void) setName: (NSString*) value;

@end
