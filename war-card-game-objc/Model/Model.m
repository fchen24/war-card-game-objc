//
//  Model.m
//  war-card-game-objc
//
//  Created by 陳飛 on 13/10/20.
//

#import "Model.h"

@implementation Model

#pragma mark - Methods

// Initialization with player score and cpu score
- (id)initWithPlayerNum:(int)playerNumber cpuNum:(int)cpuNumber {
    
    self = [super init];
    
    if (self) {
        self.playerScoreNumber = playerNumber;
        self.cpuScoreNumber = cpuNumber;
    }
    
    return  self;
}

// Return a random number between 2 - 14
- (int)getRandomNumber {
    
    int randNum = arc4random() % 13 + 2;
    
    return randNum;
}

// Using judge code to update the model
- (void)updateModelWithJudgeCode:(int)code {
    
    switch (code) {
        case 0:
            self.playerScoreNumber += 1;
            break;
            
        case 1:
            break;
            
        case 2:
            self.cpuScoreNumber += 1;
            break;
            
        default:
            NSLog(@"Error judge code in updating model.");
            break;
    }
}

@end
