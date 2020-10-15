//
//  Model.h
//  war-card-game-objc
//
//  Created by 陳飛 on 13/10/20.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Model : NSObject

@property (nonatomic) int playerScoreNumber;
@property (nonatomic) int cpuScoreNumber;

- (int)getRandomNumber;
- (void)updateModelWithJudgeCode:(int)code;

- (id)initWithPlayerNum:(int)playerNumber cpuNum:(int)cpuNumber;

@end

NS_ASSUME_NONNULL_END
