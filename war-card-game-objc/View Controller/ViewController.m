//
//  ViewController.m
//  war-card-game-objc
//
//  Created by 陳飛 on 12/10/20.
//

#import "ViewController.h"
#import "Model.h"
#import "GameLogic.h"


@interface ViewController ()

@end

@implementation ViewController

// MARK: - Methods Implementation

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    // Create a game model to record player and cpu scores
    self.model = [[Model alloc] initWithPlayerNum:0 cpuNum:0];
    
    // Make two cards displaying backs when loading
    NSString *leftImageName = @"back";
    NSString *rightImageName = @"back";
    self.leftImageView.image = [UIImage imageNamed:leftImageName];
    self.rightImageView.image = [UIImage imageNamed:rightImageName];
}

- (void)viewDidAppear:(BOOL)animated {
    
//    NSLog(@"Game Start ->");
}

- (IBAction)dealButton:(id)sender {
    
//    NSLog(@"Deal button tapped!");
    
    // When tapped, generate random number for player and cpu
    int playerNum = [self.model getRandomNumber];
    int cpuNum = [self.model getRandomNumber];
    
//    NSLog(@"Player : %d", playerNum);
//    NSLog(@"CPU    : %d", cpuNum);
    
    // Make a judge who wins
    int judgeCode = [GameLogic whoWinGameIsPlayerWith:playerNum orCPUWith:cpuNum];
    
    // Displaying the related card for player and cpu in user interface
    NSString *leftImageName = [NSString stringWithFormat:@"card%d", playerNum];
    NSString *rightImageName = [NSString stringWithFormat:@"card%d", cpuNum];
    self.leftImageView.image = [UIImage imageNamed:leftImageName];
    self.rightImageView.image = [UIImage imageNamed:rightImageName];
    
    // Updating the socres model
    [self.model updateModelWithJudgeCode:judgeCode];
    
    // Displaying the socres in the ralated label
    self.playerScore.text = [NSString stringWithFormat:@"%d", self.model.playerScoreNumber];
    self.cpuScore.text = [ NSString stringWithFormat:@"%d", self.model.cpuScoreNumber];
}

@end
