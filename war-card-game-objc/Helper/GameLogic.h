//
//  GameLogic.h
//  war-card-game-objc
//
//  Created by 陳飛 on 13/10/20.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface GameLogic : NSObject

+ (int)whoWinGameIsPlayerWith:(int)playerNum orCPUWith:(int)cpuNum;

@end

NS_ASSUME_NONNULL_END
