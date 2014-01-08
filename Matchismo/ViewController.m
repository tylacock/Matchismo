//
//  ViewController.m
//  Matchismo
//
//  Created by Lacock, Ty on 1/3/14.
//  Copyright (c) 2014 TWL. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;
@property (nonatomic) Deck *initialDeck;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    for (PlayingCard *card in self.initialDeck.cards) {
        NSLog(@"%@", card.contents);
    }
    
    NSLog(@"Random %@", self.initialDeck.drawRandomCard.contents);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (Deck *)initialDeck
{
    if (!_initialDeck) _initialDeck = [[PlayingCardDeck alloc] init];
    return _initialDeck;
}


- (void)setFlipCount:(int)flipCount
{
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
    NSLog(@"flipcount = %d", self.flipCount);
}

- (IBAction)touchCardButton:(UIButton *)sender
{
    NSString *cardContent = [[NSString alloc] init];
    
    for (PlayingCard *card in self.initialDeck.cards) {
        *cardContent = ;
    }
    if ([sender.currentTitle length]) {
        [sender setBackgroundImage:[UIImage imageNamed:@"stanford-tree"]
                          forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
    } else {
        [sender setBackgroundImage:[UIImage imageNamed:@"cardfront"]
                          forState:UIControlStateNormal];
        [sender setTitle:@"A♣︎" forState:UIControlStateNormal];
    }
    NSLog(@"%@", cardContent);
    self.flipCount++;
}

@end
