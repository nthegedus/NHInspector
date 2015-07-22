//
//  ViewController.m
//  NHInspector
//
//  Created by Nathan Hegedus on 22/07/15.
//  Copyright (c) 2015 Nathan Hegedus. All rights reserved.
//

#import "ViewController.h"
#import "Product.h"
#import "NSObject+Inspector.h"

@interface ViewController ()

@property (nonatomic, strong) Product *product;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self setupData];
    
    [self.product inspectObjectLog];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Private Methods

- (void)setupData {
    
    // Users
    
    User *user1 = [User new];
    user1.userName = @"Jaime Lannister";
    user1.age = 44;
    user1.extraInfoDict = [NSDictionary dictionaryWithObjectsAndKeys:@"Genre", @"Male", @"Alias", @"Cripple", nil];
    
    User *user2 = [User new];
    user2.userName = @"Cersei Lannister";
    user2.age = 41;
    user2.extraInfoDict = [NSDictionary dictionaryWithObjectsAndKeys:@"Genre", @"Female", @"Alias", @"Brotherfucker", nil];
    
    User *user3 = [User new];
    user3.userName = @"Tyrion Lannister";
    user3.age = 38;
    user3.extraInfoDict = [NSDictionary dictionaryWithObjectsAndKeys:@"Genre", @"Male", @"Alias", @"Halfman", nil];

    
    // Reviews
    
    Review *review1 = [Review new];
    review1.user = user1;
    review1.reviewDescription = @"There are no shirt like this. There's only this";
    
    Review *review2 = [Review new];
    review2.user = user2;
    review2.reviewDescription = @"Love is a weakness. Love no one but your children and this shirt";
    
    Review *review3 = [Review new];
    review3.user = user3;
    review3.reviewDescription = @"This shirt's better with some wine in the belly";
    
    Review *review4 = [Review new];
    review4.user = user3;
    review4.reviewDescription = @"Thanks! You have a size for dwarves!";
    
    // Product
    
    self.product = [Product new];
    self.product.productName = @"Shirt - Hear Me Roar";
    self.product.price = 50.99;
    self.product.reviewsArray = [NSArray arrayWithObjects:review1, review2, review3, review4, nil];
    
    
}

@end
