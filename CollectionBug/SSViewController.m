//
//  SSViewController.m
//  CollectionBug
//
//  Created by Stas Stelle on 14/08/14.
//  Copyright (c) 2014 Stelle-Beratung. All rights reserved.
//

#import "SSViewController.h"

@interface SSViewController ()

@end

@implementation SSViewController

- (void)viewDidLoad{
    [super viewDidLoad];
    self.collectionView.dataSource = self;
    self.collectionView.delegate = self;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    
    return 1;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    
    UIButton *button = (UIButton *)[cell viewWithTag:1];
    
    [button addTarget:self action:@selector(touched) forControlEvents:UIControlEventTouchUpInside];
    
    return cell;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
 
//    return CGSizeMake(297, 120); //thats the real size in the storyboard
    
    return CGSizeMake(297, 240); //thats the real size in the storyboard
}


-(void) touched{
    NSLog(@"touched");
}

@end
