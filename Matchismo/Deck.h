//
//  Deck.h
//  Matchismo
//
//  Created by Lacock, Ty on 1/3/14.
//  Copyright (c) 2014 TWL. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

@property (strong, nonatomic)NSMutableArray *cards;

- (void)addCard:(Card *)card atTop:(BOOL)atTop;
- (void)addCard:(Card *)card;
- (Card *)drawRandomCard;

@end
