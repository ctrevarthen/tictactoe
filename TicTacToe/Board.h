//
//  Board.h
//  TicTacToe
//
//  Created by Christopher Trevarthen on 4/4/14.
//  Copyright (c) 2014 Christopher Trevarthen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Board : UIView

@property (nonatomic) int dimensions;
@property (nonatomic, strong) NSMutableArray *cells ;


+ (Board *)initWithBoardDimensions;

@end
