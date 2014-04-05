#import "Kiwi.h"
#import "Board.h"

SPEC_BEGIN(TicTacToe)

describe(@"Board", ^{
    context(@"when creating a new board", ^{
        
        it(@"board exists", ^{
            Board *board = [[Board alloc] init];
            [[board shouldNot] beNil];
        });
        it(@"board has 3x3 dimensions", ^{
            Board *board = [Board initWithBoardDimensions];
            [[theValue(board.dimensions) should] equal:theValue(3)];
        });
        it(@"All the cells start out empty", ^{
            Board *board = [Board initWithBoardDimensions];
            NSArray *cellArrayInitial = @[@[@"", @"", @""],
                                          @[@"", @"", @""],
                                          @[@"", @"", @""]];
            NSMutableArray *cellArray = [[NSMutableArray alloc] initWithArray:cellArrayInitial];
            [[board.cells should] equal:cellArray];
        });
    
    });
    context(@"when player makes a move", ^{
        pending(@"fills in empty cell with X or O", ^{
            Board *board = [Board initWithBoardDimensions];
            [board playerMoveToCell:board.cells[0][0] withLetter:@"X"];
            [[board.cells[0][0] should] equal:@"X"];
        });
    });
});


SPEC_END