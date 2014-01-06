//
//  PlayingCard.h
//  Matchismo
//
//  Created by Lacock, Ty on 1/6/14.
//  Copyright (c) 2014 TWL. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

@end
