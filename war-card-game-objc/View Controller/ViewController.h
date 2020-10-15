//
//  ViewController.h
//  war-card-game-objc
//
//  Created by 陳飛 on 12/10/20.
//

#import <UIKit/UIKit.h>
#import "Model.h"

@interface ViewController : UIViewController

// MARK: - Public Porperties

@property (weak, nonatomic) IBOutlet UIImageView *leftImageView;
@property (weak, nonatomic) IBOutlet UIImageView *rightImageView;
@property (weak, nonatomic) IBOutlet UILabel *playerScore;
@property (weak, nonatomic) IBOutlet UILabel *cpuScore;

@property (strong, nonatomic) Model *model;

// MARK: - Deal Button Action Method

- (IBAction)dealButton:(id)sender;

@end

