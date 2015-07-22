//
//  NSObject+Inspector.h
//
//  Created by Nathan Hegedus on 1/23/15.
//  Copyright (c) 2015 Nathan Hegedus. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (Inspector)

-(NSDictionary *)inspectObject;
-(void)inspectObjectLog;

@end
