solve :-
    L = [ 8, _, _, _, _, _, _, _, _,
          _, _, 3, 6, _, _, _, _, _,
          _, 7, _, _, 9, _, 2, _, _,
          _, 5, _, _, _, 7, _, _, _,
          _, _, _, _, 4, 5, 7, _, _,
          _, _, _, 1, _, _, _, 3, _,
          _, _, 1, _, _, _, _, 6, 8,
          _, _, 8, 5, _, _, _, 1, _,
          _, 9, _, _, _, _, 4, _, _ ],
    writeT,
    sudoku(L),
    writeT,
    writeN(9, L).
solve :-
    writeT.
%% ?- solve.
%  date(2021,9,19,20,3,41.979193449,-28800,-,-)
%  date(2021,9,19,20,3,43.223728895,-28800,-,-)
%  8 1 2 7 5 3 6 4 9
%  9 4 3 6 8 2 1 7 5
%  6 7 5 4 9 1 2 8 3
%  1 5 4 2 3 7 8 9 6
%  3 6 9 8 4 5 7 2 1
%  2 8 7 1 6 9 5 3 4
%  5 2 1 9 7 4 3 6 8
%  4 3 8 5 2 6 9 1 7
%  7 9 6 3 1 8 4 5 2
%  true ;
%  date(2021,9,19,20,4,35.775829553,-28800,-,-)
%  true.


generate :-
    L =
    [ _, _, _, _, _, _, _, _, _,
      _, _, _, _, _, _, _, _, _,
      _, _, _, _, _, _, _, _, _,
      _, _, _, _, _, _, _, _, _,
      _, _, _, _, _, _, _, _, _,
      _, _, _, _, _, _, _, _, _,
      _, _, _, _, _, _, _, _, _,
      _, _, _, _, _, _, _, _, _,
      _, _, _, _, _, _, _, _, _
    ],
    writeT,
    sudoku(L),
    writeT,
    writeN(9, L).
generate :-
    writeT.

sudoku(L) :-
    solve(L).



solve([ S11, S12, S13, S14, S15, S16, S17, S18, S19,
        S21, S22, S23, S24, S25, S26, S27, S28, S29,
        S31, S32, S33, S34, S35, S36, S37, S38, S39,
        S41, S42, S43, S44, S45, S46, S47, S48, S49,
        S51, S52, S53, S54, S55, S56, S57, S58, S59,
        S61, S62, S63, S64, S65, S66, S67, S68, S69,
        S71, S72, S73, S74, S75, S76, S77, S78, S79,
        S81, S82, S83, S84, S85, S86, S87, S88, S89,
        S91, S92, S93, S94, S95, S96, S97, S98, S99 ]) :-

    R1 = [S11, S12, S13, S14, S15, S16, S17, S18, S19],
    R2 = [S21, S22, S23, S24, S25, S26, S27, S28, S29],
    R3 = [S31, S32, S33, S34, S35, S36, S37, S38, S39],
    R4 = [S41, S42, S43, S44, S45, S46, S47, S48, S49],
    R5 = [S51, S52, S53, S54, S55, S56, S57, S58, S59],
    R6 = [S61, S62, S63, S64, S65, S66, S67, S68, S69],
    R7 = [S71, S72, S73, S74, S75, S76, S77, S78, S79],
    R8 = [S81, S82, S83, S84, S85, S86, S87, S88, S89],
    R9 = [S91, S92, S93, S94, S95, S96, S97, S98, S99],

    C1 = [S11, S21, S31, S41, S51, S61, S71, S81, S91],
    C2 = [S12, S22, S32, S42, S52, S62, S72, S82, S92],
    C3 = [S13, S23, S33, S43, S53, S63, S73, S83, S93],
    C4 = [S14, S24, S34, S44, S54, S64, S74, S84, S94],
    C5 = [S15, S25, S35, S45, S55, S65, S75, S85, S95],
    C6 = [S16, S26, S36, S46, S56, S66, S76, S86, S96],
    C7 = [S17, S27, S37, S47, S57, S67, S77, S87, S97],
    C8 = [S18, S28, S38, S48, S58, S68, S78, S88, S98],
    C9 = [S19, S29, S39, S49, S59, S69, S79, S89, S99],

    B1 = [S11, S12, S13,
          S21, S22, S23,
          S31, S32, S33], B2 = [S14, S15, S16,
                                S24, S25, S26,
                                S34, S35, S36], B3 = [S17, S18, S19,
                                                      S27, S28, S29,
                                                      S37, S38, S39],
    B4 = [S41, S42, S43,
          S51, S52, S53,
          S61, S62, S63], B5 = [S44, S45, S46,
                                S54, S55, S56,
                                S64, S65, S66], B6 = [S47, S48, S49,
                                                      S57, S58, S59,
                                                      S67, S68, S69],
    B7 = [S71, S72, S73,
          S81, S82, S83,
          S91, S92, S93], B8 = [S74, S75, S76,
                                S84, S85, S86,
                                S94, S95, S96], B9 = [S77, S78, S79,
                                                      S87, S88, S89,
                                                      S97, S98, S99],

    n3(S11, C1, 1, R1, 1, B1, 1),
    n3(S12, C2, 1, R1, 2, B1, 2),
    n3(S13, C3, 1, R1, 3, B1, 3),
    n3(S14, C4, 1, R1, 4, B2, 1),
    n3(S15, C5, 1, R1, 5, B2, 2),
    n3(S16, C6, 1, R1, 6, B2, 3),
    n3(S17, C7, 1, R1, 7, B3, 1),
    n3(S18, C8, 1, R1, 8, B3, 2),
    n3(S19, C9, 1, R1, 9, B3, 3),

    n3(S21, C1, 2, R2, 1, B1, 4),
    n3(S22, C2, 2, R2, 2, B1, 5),
    n3(S23, C3, 2, R2, 3, B1, 6),
    n3(S24, C4, 2, R2, 4, B2, 4),
    n3(S25, C5, 2, R2, 5, B2, 5),
    n3(S26, C6, 2, R2, 6, B2, 6),
    n3(S27, C7, 2, R2, 7, B3, 4),
    n3(S28, C8, 2, R2, 8, B3, 5),
    n3(S29, C9, 2, R2, 9, B3, 6),

    n3(S31, C1, 3, R3, 1, B1, 7),
    n3(S32, C2, 3, R3, 2, B1, 8),
    n3(S33, C3, 3, R3, 3, B1, 9),
    n3(S34, C4, 3, R3, 4, B2, 7),
    n3(S35, C5, 3, R3, 5, B2, 8),
    n3(S36, C6, 3, R3, 6, B2, 9),
    n3(S37, C7, 3, R3, 7, B3, 7),
    n3(S38, C8, 3, R3, 8, B3, 8),
    n3(S39, C9, 3, R3, 9, B3, 9),

    n3(S41, C1, 4, R4, 1, B4, 1),
    n3(S42, C2, 4, R4, 2, B4, 2),
    n3(S43, C3, 4, R4, 3, B4, 3),
    n3(S44, C4, 4, R4, 4, B5, 1),
    n3(S45, C5, 4, R4, 5, B5, 2),
    n3(S46, C6, 4, R4, 6, B5, 3),
    n3(S47, C7, 4, R4, 7, B6, 1),
    n3(S48, C8, 4, R4, 8, B6, 2),
    n3(S49, C9, 4, R4, 9, B6, 3),

    n3(S51, C1, 5, R5, 1, B4, 4),
    n3(S52, C2, 5, R5, 2, B4, 5),
    n3(S53, C3, 5, R5, 3, B4, 6),
    n3(S54, C4, 5, R5, 4, B5, 4),
    n3(S55, C5, 5, R5, 5, B5, 5),
    n3(S56, C6, 5, R5, 6, B5, 6),
    n3(S57, C7, 5, R5, 7, B6, 4),
    n3(S58, C8, 5, R5, 8, B6, 5),
    n3(S59, C9, 5, R5, 9, B6, 6),

    n3(S61, C1, 6, R6, 1, B4, 7),
    n3(S62, C2, 6, R6, 2, B4, 8),
    n3(S63, C3, 6, R6, 3, B4, 9),
    n3(S64, C4, 6, R6, 4, B5, 7),
    n3(S65, C5, 6, R6, 5, B5, 8),
    n3(S66, C6, 6, R6, 6, B5, 9),
    n3(S67, C7, 6, R6, 7, B6, 7),
    n3(S68, C8, 6, R6, 8, B6, 8),
    n3(S69, C9, 6, R6, 9, B6, 9),

    n3(S71, C1, 7, R7, 1, B7, 1),
    n3(S72, C2, 7, R7, 2, B7, 2),
    n3(S73, C3, 7, R7, 3, B7, 3),
    n3(S74, C4, 7, R7, 4, B8, 1),
    n3(S75, C5, 7, R7, 5, B8, 2),
    n3(S76, C6, 7, R7, 6, B8, 3),
    n3(S77, C7, 7, R7, 7, B9, 1),
    n3(S78, C8, 7, R7, 8, B9, 2),
    n3(S79, C9, 7, R7, 9, B9, 3),

    n3(S81, C1, 8, R8, 1, B7, 4),
    n3(S82, C2, 8, R8, 2, B7, 5),
    n3(S83, C3, 8, R8, 3, B7, 6),
    n3(S84, C4, 8, R8, 4, B8, 4),
    n3(S85, C5, 8, R8, 5, B8, 5),
    n3(S86, C6, 8, R8, 6, B8, 6),
    n3(S87, C7, 8, R8, 7, B9, 4),
    n3(S88, C8, 8, R8, 8, B9, 5),
    n3(S89, C9, 8, R8, 9, B9, 6),

    n3(S91, C1, 9, R9, 1, B7, 7),
    n3(S92, C2, 9, R9, 2, B7, 8),
    n3(S93, C3, 9, R9, 3, B7, 9),
    n3(S94, C4, 9, R9, 4, B8, 7),
    n3(S95, C5, 9, R9, 5, B8, 8),
    n3(S96, C6, 9, R9, 6, B8, 9),
    n3(S97, C7, 9, R9, 7, B9, 7),
    n3(S98, C8, 9, R9, 8, B9, 8),
    n3(S99, C9, 9, R9, 9, B9, 9).




n(1).
n(2).
n(3).
n(4).
n(5).
n(6).
n(7).
n(8).
n(9).

nl(_, [], _).
nl(N, [_|T], 1) :-
    nl(N, T, 0).
nl(N, [H|T], Except) :-
    Except =\= 1,
    E is Except-1,
    n(N, H),
    nl(N, T, E).

n(N, X) :-
    not(var(X)),
    !,
    n(N),
    N \= X.
n(N, _) :-
    n(N).

n3(N, Column, CExcept, Row, RExcept, Block, BExcept) :-
    nl(N, Column, CExcept),
    nl(N, Row, RExcept),
    nl(N, Block, BExcept).

writeT :-
    get_time(S),
    stamp_date_time(S, D, -28800),
    format("~p~n", [D]).

writeN(1, [H|T]) :-
    format("~p~n", [H]),
    writeN(1, T).
writeN(2, [A,B|T]) :-
    format("~p ~p~n", [A,B]),
    writeN(2, T).
writeN(3, [A,B,C|T]) :-
    format("~p ~p ~p~n", [A,B,C]),
    writeN(3, T).
writeN(4, [A,B,C,D|T]) :-
    format("~p ~p ~p ~p~n", [A,B,C,D]),
    writeN(4, T).
writeN(5, [A,B,C,D,E|T]) :-
    format("~p ~p ~p ~p ~p~n", [A,B,C,D,E]),
    writeN(5, T).
writeN(6, [A,B,C,D,E,F|T]) :-
    format("~p ~p ~p ~p ~p ~p~n", [A,B,C,D,E,F]),
    writeN(6, T).
writeN(7, [A,B,C,D,E,F,G|T]) :-
    format("~p ~p ~p ~p ~p ~p ~p~n", [A,B,C,D,E,F,G]),
    writeN(7, T).
writeN(8, [A,B,C,D,E,F,G,H|T]) :-
    format("~p ~p ~p ~p ~p ~p ~p ~p~n", [A,B,C,D,E,F,G,H]),
    writeN(8, T).
writeN(9, [A,B,C,D,E,F,G,H,I|T]) :-
    format("~p ~p ~p ~p ~p ~p ~p ~p ~p~n", [A,B,C,D,E,F,G,H,I]),
    writeN(9, T).
writeN(_, []).
