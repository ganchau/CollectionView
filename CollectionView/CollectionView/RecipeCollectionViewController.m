//
//  RecipeCollectionViewController.m
//  CollectionView
//
//  Created by Gan Chau on 9/15/15.
//  Copyright © 2015 GC App. All rights reserved.
//

#import "RecipeCollectionViewController.h"

NSString *const REUSE_ID = @"Cell";

@interface RecipeCollectionViewController ()

@property (strong, nonatomic) NSArray *recipePhotos;

@end

@implementation RecipeCollectionViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // initialize recipe image array
    self.recipePhotos = @[ @"angry_birds_cake.jpg",
                           @"creme_brelee.jpg",
                           @"egg_benedict.jpg",
                           @"full_breakfast.jpg",
                           @"green_tea.jpg",
                           @"ham_and_cheese_panini.jpg",
                           @"ham_and_egg_sandwich.jpg",
                           @"hamburger.jpg",
                           @"instant_noodle_with_egg.jpg",
                           @"japanese_noodle_with_pork.jpg",
                           @"mushroom_risotto.jpg",
                           @"noodle_with_bbq_pork.jpg",
                           @"starbucks_coffee.jpg",
                           @"thai_shrimp_cake.jpg",
                           @"vegetable_curry.jpg",
                           @"white_chocolate_donut.jpg" ];
}

#pragma mark - Collection View delegate methods

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return self.recipePhotos.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:REUSE_ID
                                                                           forIndexPath:indexPath];
    cell.backgroundView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"photo-frame"]];
    UIImageView *recipeImageView = (UIImageView *)[cell viewWithTag:100];
    
    recipeImageView.image = [UIImage imageNamed:self.recipePhotos[indexPath.row]];
    
    return cell;
    
}


@end
