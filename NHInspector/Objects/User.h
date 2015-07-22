//
//  User.h
//  NHInspector
//
//  Created by Nathan Hegedus on 22/07/15.
//  Copyright (c) 2015 Nathan Hegedus. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject

@property (nonatomic, strong) NSString *userName;
@property (nonatomic) int age;
@property (nonatomic, strong) NSDictionary *extraInfoDict;

@end
