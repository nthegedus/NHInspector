//
//  Product.h
//  NHInspector
//
//  Created by Nathan Hegedus on 22/07/15.
//  Copyright (c) 2015 Nathan Hegedus. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Review.h"

@interface Product : NSObject

@property (nonatomic, strong) NSString *productName;
@property (nonatomic) double price;
@property (nonatomic, strong) NSArray *reviewsArray;

@end
