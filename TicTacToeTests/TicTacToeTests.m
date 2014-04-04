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
//            Board *board = [[Board alloc] initWithBoardDimensions];
            
            [[theValue(board.dimensions) should] equal:theValue(3)];
        });
    });
});


SPEC_END