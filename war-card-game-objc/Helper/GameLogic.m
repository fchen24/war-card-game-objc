//
//  GameLogic.m
//  war-card-game-objc
//
//  Created by 陳飛 on 13/10/20.
//

#import "GameLogic.h"

@implementation GameLogic

#pragma mark - Class Mehods

// Judge who wins, return the judge code including 3 statuses
+ (int)whoWinGameIsPlayerWith:(int)playerNum orCPUWith:(int)cpuNum {
    
    //
    // Returen Judge Code:
    // 0 - player win, 1 - tie, 2 - cpu win
    //
    
    int isPlayerWin = 1;
    
    if (playerNum > cpuNum) {
        isPlayerWin = 0;
    } else if (playerNum < cpuNum) {
        isPlayerWin = 2;
    }
    
    return  isPlayerWin;
}

@end
