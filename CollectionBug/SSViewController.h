//
//  SSViewController.h
//  CollectionBug
//
//  Created by Stas Stelle on 14/08/14.
//  Copyright (c) 2014 Stelle-Beratung. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SSViewController : UIViewController <UICollectionViewDataSource, UICollectionViewDelegate>
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@end
