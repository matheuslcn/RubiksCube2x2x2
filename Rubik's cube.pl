% T - Tras
% C - Cima
% E - Esquerda
% D - Direita
% B - Baixo
% F - Frente
%
%       T3 T4
%       T2 T1
% E4 E1 C1 C2 D2 D3
% E3 E2 C4 C3 D1 D4
%       F1 F2
%       F4 F3
%       B1 B2
%       B4 B3


objetivo([24, [b,b,b,b] , [r,r,r,r] , [g,g,g,g] , [y,y,y,y] , [p,p,p,p] , [o,o,o,o]]).


% move - todos os movimentos que podem ser feitos em um cubo 2x2x2

%       T3 T4
%       T2 T1
% E4 E1 C1 C2 D2 D3
% E3 E2 C4 C3 D1 D4
%       F1 F2
%       F4 F3
%       B1 B2
%       B4 B3
%       
%       T3 T4
%       E2 E1
% E4 F1 C4 C1 T2 D3
% E3 F2 C3 C2 T1 D4
%       D1 D2
%       F4 F3
%       B1 B2
%       B4 B3
move(
    c,
    [_,
     [C1, C2, C3, C4],
     [B1, B2, B3, B4],
     [E1, E2, E3, E4],
     [D1, D2, D3, D4],
     [F1, F2, F3, F4],
     [T1, T2, T3, T4]
    ],
    [_,
     [C4, C1, C2, C3],
     [B1, B2, B3, B4],
     [F1, F2, E3, E4], 
     [T1, T2, D3, D4], 
     [D1, D2, F3, F4], 
     [E1, E2, T3, T4]
    ]
).

%       T3 T4
%       T2 T1
% E4 E1 C1 C2 D2 D3
% E3 E2 C4 C3 D1 D4
%       F1 F2
%       F4 F3
%       B1 B2
%       B4 B3
%       
%       D3 D4
%       T2 T1
% T4 E1 C1 C2 D2 F3
% T3 E2 C4 C3 D1 F4
%       F1 F2
%       E4 E3
%       B4 B1
%       B3 B2

move(
    b_,
    [_,
     [C1, C2, C3, C4],
     [B1, B2, B3, B4],
     [E1, E2, E3, E4],
     [D1, D2, D3, D4],
     [F1, F2, F3, F4],
     [T1, T2, T3, T4]
    ],
    [_,
     [C1, C2, C3, C4],
     [B4, B1, B2, B3],
     [E1, E2, T3, T4],
     [D1, D2, F3, F4],
     [F1, F2, E3, E4],
     [T1, T2, D3, D4]
    ]
).

%       T3 T4
%       T2 T1
% E4 E1 C1 C2 D2 D3
% E3 E2 C4 C3 D1 D4
%       F1 F2
%       F4 F3
%       B1 B2
%       B4 B3
%       
%       B1 T4
%       B4 T1
% E1 E2 T3 C2 D2 D3
% E4 E3 T2 C3 D1 D4
%       C1 F2
%       C4 F3
%       F1 B2
%       F4 B3

move(
    e,
    [_,
     [C1, C2, C3, C4],
     [B1, B2, B3, B4],
     [E1, E2, E3, E4],
     [D1, D2, D3, D4],
     [F1, F2, F3, F4],
     [T1, T2, T3, T4]
    ],
    [_,
     [T3, C2, C3, T2],
     [F1, B2, B3, F4],
     [E2, E3, E4, E1],
     [D1, D2, D3, D4],
     [C1, F2, F3, C4],
     [T1, B4, B1, T4]
    ]
).

%       T3 T4
%       T2 T1
% E4 E1 C1 C2 D2 D3
% E3 E2 C4 C3 D1 D4
%       F1 F2
%       F4 F3
%       B1 B2
%       B4 B3
%       
%       T3 C2
%       T2 C3
% E4 E1 C1 F2 D1 D2
% E3 E2 C4 F3 D4 D3
%       F1 B2
%       F4 B3
%       B1 T4
%       B4 T1

move(
    d_,
    [_,
     [C1, C2, C3, C4],
     [B1, B2, B3, B4],
     [E1, E2, E3, E4],
     [D1, D2, D3, D4],
     [F1, F2, F3, F4],
     [T1, T2, T3, T4]
    ],
    [_,
     [C1, F2, F3, C4],
     [B1, T4, T1, B4],
     [E1, E2, E3, E4],
     [D4, D1, D2, D3],
     [F1, B2, B3, F4],
     [C3, T2, T3, C2]
    ]
).

%       T3 T4
%       T2 T1
% E4 E1 C1 C2 D2 D3
% E3 E2 C4 C3 D1 D4
%       F1 F2
%       F4 F3
%       B1 B2
%       B4 B3
%       
%       T3 T4
%       T2 T1
% E4 E1 C1 C2 D2 D3
% B2 B1 E3 E2 C4 C3
%       F4 F1
%       F3 F2
%       D4 D1
%       B4 B3

move(
    f,
    [_,
     [C1, C2, C3, C4],
     [B1, B2, B3, B4],
     [E1, E2, E3, E4],
     [D1, D2, D3, D4],
     [F1, F2, F3, F4],
     [T1, T2, T3, T4]
    ],
    [_,
     [C1, C2, E2, E3],
     [D4, D1, B3, B4],
     [E1, B1, B2, E4], 
     [C4, D2, D3, C3],
     [F4, F1, F2, F3],
     [T1, T2, T3, T4]
    ]
).

%       T3 T4
%       T2 T1
% E4 E1 C1 C2 D2 D3
% E3 E2 C4 C3 D1 D4
%       F1 F2
%       F4 F3
%       B1 B2
%       B4 B3
%       
%       T2 T3
%       T1 T4
% C1 C2 D2 D3 B3 B4
% E3 E2 C4 C3 D1 D4
%       F1 F2
%       F4 F3
%       B1 B2
%       E1 E4

move(
    t_,
    [_,
     [C1, C2, C3, C4],
     [B1, B2, B3, B4],
     [E1, E2, E3, E4],
     [D1, D2, D3, D4],
     [F1, F2, F3, F4],
     [T1, T2, T3, T4]
    ],
    [_,
     [D2, D3, C3, C4],
     [B1, B2, E4, E1],
     [C2, E2, E3, C1],
     [D1, B3, B4, D4],
     [F1, F2, F3, F4],
     [T4, T1, T2, T3]
    ]
).

%       T3 T4
%       T2 T1
% E4 E1 C1 C2 D2 D3
% E3 E2 C4 C3 D1 D4
%       F1 F2
%       F4 F3
%       B1 B2
%       B4 B3
%       
%       T3 T4
%       D2 D1
% E4 T1 C2 C3 F2 D3
% E3 T2 C1 C4 F1 D4
%       E1 E2
%       F4 F3
%       B1 B2
%       B4 B3

move(
    c_,
    [_,
     [C1, C2, C3, C4],
     [B1, B2, B3, B4],
     [E1, E2, E3, E4],
     [D1, D2, D3, D4],
     [F1, F2, F3, F4],
     [T1, T2, T3, T4]
    ],
    [_,
     [C2, C3, C4, C1],
     [B1, B2, B3, B4],
     [T1, T2, E3, E4],
     [F1, F2, D3, D4],
     [E1, E2, F3, F4],
     [D1, D2, T3, T4]
    ]
).

%       T3 T4
%       T2 T1
% E4 E1 C1 C2 D2 D3
% E3 E2 C4 C3 D1 D4
%       F1 F2
%       F4 F3
%       B1 B2
%       B4 B3
%       
%       E3 E4
%       T2 T1
% F4 E1 C1 C2 D2 T3
% F3 E2 C4 C3 D1 T4
%       F1 F2
%       D4 D3
%       B2 B3
%       B1 B4

move(
    b,
    [_,
     [C1, C2, C3, C4],
     [B1, B2, B3, B4],
     [E1, E2, E3, E4],
     [D1, D2, D3, D4],
     [F1, F2, F3, F4],
     [T1, T2, T3, T4]
    ],
    [_,
     [C1, C2, C3, C4],
     [B2, B3, B4, B1],
     [E1, E2, F3, F4],
     [D1, D2, T3, T4],
     [F1, F2, D3, D4],
     [T1, T2, E3, E4]
    ]
).

%       T3 T4
%       T2 T1
% E4 E1 C1 C2 D2 D3
% E3 E2 C4 C3 D1 D4
%       F1 F2
%       F4 F3
%       B1 B2
%       B4 B3
%       
%       C1 T4
%       C4 T1
% E1 E2 F1 C2 D2 D3
% E4 E3 F4 C3 D1 D4
%       B1 F2
%       B4 F3
%       T3 B2
%       T2 B3

move(
    e_,
    [_,
     [C1, C2, C3, C4],
     [B1, B2, B3, B4],
     [E1, E2, E3, E4],
     [D1, D2, D3, D4],
     [F1, F2, F3, F4],
     [T1, T2, T3, T4]
    ],
    [_,
     [F1, C2, C3, F4],
     [T3, B2, B3, T2],
     [E2, E3, E4, E1],
     [D1, D2, D3, D4],
     [B1, F2, F3, B4],
     [T1, C4, C1, T4]
    ]
).

%       T3 T4
%       T2 T1
% E4 E1 C1 C2 D2 D3
% E3 E2 C4 C3 D1 D4
%       F1 F2
%       F4 F3
%       B1 B2
%       B4 B3
%       
%       T3 B2
%       T2 B3
% E4 E1 C1 T4 D3 D4
% E3 E2 C4 T1 D2 D1
%       F1 C2
%       F4 C3
%       B1 F2
%       B4 F3

move(
    d,
    [_,
     [C1, C2, C3, C4],
     [B1, B2, B3, B4],
     [E1, E2, E3, E4],
     [D1, D2, D3, D4],
     [F1, F2, F3, F4],
     [T1, T2, T3, T4]
    ],
    [_,
     [C1, T4, T1, C4],
     [B1, F2, F3, B4],
     [E1, E2, E3, E4],
     [D2, D3, D4, D1],
     [F1, C2, C3, F4],
     [B3, T2, T3, B2]
    ]
).

%       T3 T4
%       T2 T1
% E4 E1 C1 C2 D2 D3
% E3 E2 C4 C3 D1 D4
%       F1 F2
%       F4 F3
%       B1 B2
%       B4 B3
%       
%       T3 T4
%       T2 T1
% E4 E1 C1 C2 D2 D3
% C4 C3 D1 D4 B2 B1
%       F2 F3
%       F1 F4
%       E2 E3
%       B4 B3

move(
    f_,
    [_,
     [C1, C2, C3, C4],
     [B1, B2, B3, B4],
     [E1, E2, E3, E4],
     [D1, D2, D3, D4],
     [F1, F2, F3, F4],
     [T1, T2, T3, T4]
    ],
    [_,
     [C1, C2, D4, D1],
     [E2, E3, B3, B4],
     [E1, C3, C4, E4],
     [B2, D2, D3, B1],
     [F2, F3, F4, F1], 
     [T1, T2, T3, T4]
    ]
).

%       T3 T4
%       T2 T1
% E4 E1 C1 C2 D2 D3
% E3 E2 C4 C3 D1 D4
%       F1 F2
%       F4 F3
%       B1 B2
%       B4 B3
%       
%       T4 T1
%       T3 T2
% B4 B3 E4 E1 C1 C2
% E3 E2 C4 C3 D1 D4
%       F1 F2
%       F4 F3
%       B1 B2
%       D2 D3

move(
    t,
    [_,
     [C1, C2, C3, C4],
     [B1, B2, B3, B4],
     [E1, E2, E3, E4],
     [D1, D2, D3, D4],
     [F1, F2, F3, F4],
     [T1, T2, T3, T4]
    ],
    [_,
     [E4, E1, C3, C4],
     [B1, B2, D3, D2],
     [B3, E2, E3, B4],
     [D1, C1, C2, D4],
     [F1, F2, F3, F4],
     [T2, T3, T4, T1]
    ]
).


equiv(A,A).

equiv(A,B):-
    move(c,A,X),
    move(b,X,B).

equiv(A,B):-
    move(e,A,X),
    move(d,X,B).

equiv(A,B):-
    move(f,A,X),
    move(t,X,B).

equiv(A,B):-
    move(c_,A,X),
    move(b_,X,B).

equiv(A,B):-
    move(e_,A,X),
    move(d_,X,B).

equiv(A,B):-
    move(f_,A,X),
    move(t_,X,B).


equivalente(A,B):-
	equiv(A,X),
    X == B.

equivalente(A,B):-
	equiv(A,X),
	equiv(X,Y),
    equiv(Y,B).

remove_duplicatas([],[]):-!.
remove_duplicatas([A|B], [X|Y]) :-
    \+membro(A,B),
    X = A,
    remove_duplicatas(B,Y).
remove_duplicatas([A|B], X) :-   
    membro(A,B),
    remove_duplicatas(B,X).


lista_de_equivalentes(Estado, Solucao):-
    findall(X,equivalente(Estado,X),Y),
    remove_duplicatas(Y,Solucao).


% mover - todos os movimentos que serao usados na funcao melhor_movimento
mover(c, EstadoAtual, EstadoNovo) :-
	move(c, EstadoAtual, EstadoNovo).
mover(e, EstadoAtual, EstadoNovo) :-
	move(e, EstadoAtual, EstadoNovo).
mover(f, EstadoAtual, EstadoNovo) :-
	move(f, EstadoAtual, EstadoNovo).
mover(b, EstadoAtual, EstadoNovo) :-
    move(b, EstadoAtual, EstadoNovo).
mover(d, EstadoAtual, EstadoNovo) :-
    move(d, EstadoAtual, EstadoNovo).
mover(t, EstadoAtual, EstadoNovo) :-
    move(t, EstadoAtual, EstadoNovo).

% Soma a pontuação do cubo.
pecas_lado_a_lado([A,A,_,_]).
pecas_lado_a_lado([_,A,A,_]).
pecas_lado_a_lado([_,_,A,A]).
pecas_lado_a_lado([A,_,_,A]).

count([],0):-!.
count([_|T],N) :- 
    count(T,N1),
    N is N1+1.

soma_face(Face, Resultado):-
    findall(Face, pecas_lado_a_lado(Face), Lista),
    count(Lista, Resultado).

soma_cubo([Soma,A,B,C,D,E,F]):-
    soma_face(A, NA),
    soma_face(B, NB),
    soma_face(C, NC),
    soma_face(D, ND),
    soma_face(E, NE),
    soma_face(F, NF),
    Soma is NA+NB+NC+ND+NE+NF.

% ignora_primeiro - ignora o primeiro elemento de uma lista
ignora_primeiro([_|X], X).

% soma_cubos_em_lista - soma cada cubo em uma lista
soma_cubos_em_lista([],A,A):-!.
soma_cubos_em_lista([A|B], C, D):-
    ignora_primeiro(A,X),
    soma_cubo(X),
    append(C, [A], C2),
    soma_cubos_em_lista(B, C2, D).



% maiorGouH - é verdadeiro quando a heurística da primeira lista é maior que a da segunda
maiorGouH([_,GouH1|_],[_,GouH2|_]) :- GouH1 < GouH2.

% quicksortGouH - Algoritmo Quicksort para ordenação de uma lista de caminhos usando somente
% uma função heurística - custo (G) ou avaliação (H)
quicksortGouH([],[]).
quicksortGouH([X|Cauda],ListaOrd):-
        particionarGouH(X,Cauda,Menor,Maior),
        quicksortGouH(Menor,MenorOrd),
        quicksortGouH(Maior,MaiorOrd),
        append(MenorOrd,[X|MaiorOrd],ListaOrd).

% particionarGouH - particiona a lista no maior elemento - base do algoritmo Quicksort para ordenação
particionarGouH(_,[],[],[]).
particionarGouH(X,[Y|Cauda],[Y|Menor],Maior):-
        maiorGouH(X,Y),!,
        particionarGouH(X,Cauda,Menor,Maior).
particionarGouH(X,[Y|Cauda],Menor,[Y|Maior]):-
        particionarGouH(X,Cauda,Menor,Maior).

% processa_lista - passa por todos os elementos da lista
processa_lista([X|_],X).
processa_lista([_|X],Prox):-
    processa_lista(X,Prox).

% melhor_movimento - ve quais sao todos os movimentos e ordena do com maior pontuacao pro com a menor
melhor_movimento(Movimento, EstadoAtual, EstadoNovo):-
    findall([X|Estado], mover(X,EstadoAtual,Estado), Lista),
    soma_cubos_em_lista(Lista,[],ListaSomada),
    quicksortGouH(ListaSomada, ListaOrdenada),
    processa_lista(ListaOrdenada,[Movimento|EstadoNovo]).

% membro - verifica se um elemento e membro de uma lista
membro(X,[X|_]):-!.
membro(X,[_|L]):-
    membro(X,L).

% avalia - verifica se o novo estado do cubo é melhor do que o estado atual
avalia([SomaNovo|_], [SomaAtual|_]):-
    SomaNovo >= SomaAtual.

% hillClimb - Algoritmo Hill Climbing
hillClimb(Movimentos, _, [SomaAtual|_], Solucao) :-
    objetivo([SomaAtual|_]),
    reverse(Movimentos,Solucao),!.
hillClimb(Movimentos, Estados, EstadoAtual, Solucao) :-
	melhor_movimento(Movimento, EstadoAtual, EstadoNovo), % fazer uma procura do melhor proximo
    not(membro(EstadoNovo, Estados)),
    avalia(EstadoNovo, EstadoAtual),
    lista_de_equivalentes(EstadoNovo, Lista),
    append(Estados, Lista, Estados2),
    append(Movimentos, [Movimento],Movimentos2),
    hillClimb(Movimentos2, Estados2, EstadoNovo, Solucao).

% dois movimentos paralelos
% [16,[b, b, b, b], [r, r, r, r], [p, p, o, o], [o, o, p, p], [y, y, g, g], [g, g, y, y]]
% dois movimentos ortogonais
% [8,[b, y, p, b], [r, o, g, r], [p, p, g, g], [y, o, o, y], [y, r, r, p], [b, g, o, b]]
% bem complexo
% [4,[r, r, o, y], [b, g, p, b], [g, r, y, y], [b, y, g, o], [o, g, r, p], [p, p, o, b]]
% ultimo teste
% [0, [r, y, p, g], [p, b, o, g], [y, r, y, o], [g, o, r, p], [o, b, g, b], [b, p, r, y]]

%teste de equivalencia
% equivalente([[b, b, b, b], [r, r, r, r], [y, y, y, y], [g, g, g, g], [o, o, o, o], [p, p, p, p]],[[b,b,b,b] , [r,r,r,r] , [g,g,g,g] , [y,y,y,y] , [p,p,p,p] , [o,o,o,o]]).
