Artificial and Computational Intelligence Assignment 2 PART 2 Group 43
% Define admission rules based on the decision tree

admit :-
    write('Enter GRE Score: '), read(GRE),
    write('Enter Research Experience (0 or 1): '), read(Research),
    write('Enter SOP Score: '), read(SOP),
    write('Enter CGPA: '), read(CGPA),
    
    (   GRE > 317.5,
        (   Research =< 0.5 ->
            (   SOP =< 3.25 ->
                write('Admission Rejected'), nl, fail
            ;   write('Admission Granted'), nl
            )
        ;   (   CGPA =< 8.45 ->
                write('Admission Granted'), nl
            ;   write('Admission Granted'), nl
            )
        )
    ;   write('Admission Rejected'), nl, fail
    ).

% Start the interactive session
start :-
    write('Welcome to the Graduate Admission Predictor!'), nl,
    repeat,
    admit,
    write('Would you like to check another student? (yes/no): '), read(Response),
    (Response == no -> write('Goodbye!'), nl, !; true).
