# NHInspector
Inspect all properties from NSObjects

Simple way to use:

========

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
    

Use <b>inspectObjectLog </b> to log all properties or <b>inspectObject</b>, this last one will return a NSDictionary.

    [self.product inspectObjectLog];


The result:

    
    {
    price = "50.99";
    productName = "Shirt - Hear Me Roar";
    reviewsArray =     (
                {
            reviewDescription = "There are no shirt like this. There's only this";
            user =             (
                                {
                    age = 44;
                    extraInfoDict =                     {
                        Cripple = Alias;
                        Male = Genre;
                    };
                    userName = "Jaime Lannister";
                }
            );
        },
                {
            reviewDescription = "Love is a weakness. Love no one but your children and this shirt";
            user =             (
                                {
                    age = 41;
                    extraInfoDict =                     {
                        Brotherfucker = Alias;
                        Female = Genre;
                    };
                    userName = "Cersei Lannister";
                }
            );
        },
                {
            reviewDescription = "This shirt's better with some wine in the belly";
            user =             (
                                {
                    age = 38;
                    extraInfoDict =                     {
                        Halfman = Alias;
                        Male = Genre;
                    };
                    userName = "Tyrion Lannister";
                }
            );
        },
                {
            reviewDescription = "Thanks! You have a size for dwarves!";
            user =             (
                                {
                    age = 38;
                    extraInfoDict =                     {
                        Halfman = Alias;
                        Male = Genre;
                    };
                    userName = "Tyrion Lannister";
                }
            );
        }
    );
}
