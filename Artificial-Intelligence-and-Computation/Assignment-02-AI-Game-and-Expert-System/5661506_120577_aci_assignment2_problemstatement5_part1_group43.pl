% Decision Tree Prolog Rules

% Rules derived from a decision tree for Tic-Tac-Toe strategy

% Base case: If a player has five consecutive marks, they win.
winning_move(Player, Board) :- win(Player, Board).

% If a player has four consecutive markers, the best move is to complete five.
strategic_move(Player, Board, Move) :- 
    potential_five(Player, Board, Move).

% If blocking an opponent prevents them from winning, prioritize that move.
defensive_move(Player, Board, Move) :- 
    opponent(Player, Opponent),
    potential_five(Opponent, Board, Move).

% If a player can set up four in a row, prioritize it.
offensive_move(Player, Board, Move) :- 
    potential_four(Player, Board, Move).

% Define an opponent for blocking strategy.
opponent('A', 'B').
opponent('A', 'C').
opponent('B', 'A').
opponent('B', 'C').
opponent('C', 'A').
opponent('C', 'B').

% Identify potential five-marker sequences.
potential_five(Player, Board, Move) :- 
    simulate_move(Player, Board, Move, NewBoard),
    win(Player, NewBoard).

% Identify potential four-marker sequences.
potential_four(Player, Board, Move) :- 
    simulate_move(Player, Board, Move, NewBoard),
    count_consecutive(Player, NewBoard, 4).

% Simulate a move on the board.
simulate_move(Player, Board, (Row, Col), NewBoard) :- 
    replace(Board, Row, Col, Player, NewBoard).

% Replace a board position with a player's marker.
replace(Board, Row, Col, Player, NewBoard) :- 
    nth0(Row, Board, OldRow),
    replace_nth(OldRow, Col, Player, NewRow),
    replace_nth(Board, Row, NewRow, NewBoard).

replace_nth([_|T], 0, X, [X|T]).
replace_nth([H|T], N, X, [H|R]) :- 
    N > 0, 
    N1 is N - 1, 
    replace_nth(T, N1, X, R).
