//
//  Review.h
//  NHInspector
//
//  Created by Nathan Hegedus on 22/07/15.
//  Copyright (c) 2015 Nathan Hegedus. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "User.h"

@interface Review : NSObject

@property (nonatomic, strong) User *user;
@property (nonatomic, strong) NSString *reviewDescription;

@end
