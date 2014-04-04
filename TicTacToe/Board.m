//
//  Board.m
//  TicTacToe
//
//  Created by Christopher Trevarthen on 4/4/14.
//  Copyright (c) 2014 Christopher Trevarthen. All rights reserved.
//

#import "Board.h"

@implementation Board

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

+ (Board *)initWithBoardDimensions {
    Board *board = [[Board alloc] init];
    board.dimensions = 3;
    NSArray *cellArrayInitial = @[@[@"", @"", @""], @[@"", @"", @""], @[@"", @"", @""]];
    NSMutableArray *cellArray = [[NSMutableArray alloc] initWithArray:cellArrayInitial];
    board.cells = cellArray;
    return board;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
