//
//  Deck.m
//  Matchismo
//
//  Created by Lacock, Ty on 1/3/14.
//  Copyright (c) 2014 TWL. All rights reserved.
//

#import "Deck.h"

@implementation Deck

- (NSMutableArray *)cards
{
    if (!_cards) _cards = [[NSMutableArray alloc] init];
    return _cards;
}

- (void)addCard:(Card *)card atTop:(BOOL)atTop
{
    if (atTop) {
        [self.cards insertObject:card atIndex:0];
    } else {
        [self.cards addObject:card];
    }
}

- (void)addCard:(Card *)card
{
    [self addCard:card atTop: NO];
}

- (Card *)drawRandomCard
{
    Card *randomCard = nil;
    
    unsigned index = arc4random() % [self.cards count];
    randomCard = self.cards[index];
    [self.cards removeObjectAtIndex:index];
    
    return randomCard;
}
@end
