%Krainer Larissa
%ASP: Clingo Tent Solver 

% horizontally and vertically cells
plus(-1,0). plus(0,1). plus(0,-1). plus(1,0).
% diagonally cells
dia(-1,-1). dia(-1,1). dia(1,-1). dia(1,1).

maxR(N) :-  #max{ R : cell(R,_) } = N.
maxC(N) :-  #max{ C : cell(_,C) } = N.

% 1) Only ONE tent around a tree (horizontally and vertically) - No tents diagonally around a tree
{coupled(R,C,R+A,C+B) : plus(A,B), R+A>0, C+B>0, R+A<= MR, maxR(MR), C+B<=MC, maxC(MC)}=1 :- tree(R,C).
tent(R,C) :- coupled(_, _, R,C).
%{tent(R+A,C+B) : plus(A,B), R+A>0, C+B>0, R+A<= MR, maxR(MR), C+B<=MC, maxC(MC)}=1 :- tree(R,C).
%coupled(R, C, R2, C2) :- tent(R2, C2), tree(R,C).

% 2) The number of tents has to be equal to the number of trees 
%    (#tents == #trees)
numTents(N) :- #count{R,C : tent(R,C)} = N.
numTrees(N) :- #count{R,C : tree(R,C)} = N.
X = Y :- numTents(X), numTrees(Y).

% 3) The given numbers of rows and columns,
%    have to be equal to the number of placed tents,
%    in the respective row or column.
X = Y :- column_hint(C, X), #count{R : tent(R, C)} = Y.
X = Y :- row_hint(R, X), #count{C : tent(R, C)} = Y.

% 4) No tent can "serve" more than one tree.
C1 = C2 :- coupled(R1,C1, R, C), coupled(R2,C2, R, C).
R1 = R2 :- coupled(R1,C1, R, C), coupled(R2,C2, R, C).

% 5) No tent is horizontally, vertically or diagonally next to another tent
%{tent(R+A,C+B) : plus(A,B), R+A>0, C+B>0, R+A<= MR, maxR(MR), C+B<=MC, maxC(MC)}=0 :- tent(R,C).
%{tent(R+A,C+B) : dia(A,B), R+A>0, C+B>0, R+A<= MR, maxR(MR), C+B<=MC, maxC(MC)}=0 :- tent(R,C).
neighbourVert(R, C, R+A, C+B) :- tent(R,C), tent(R+A,C+B),plus(A,B), R+A>0, C+B>0, R+A<= MR, maxR(MR), C+B<=MC, maxC(MC).
:- tent(R1,C1), tent(R2,C2), neighbourVert(R1,C1,R2,C2).
neighbourDia(R,C,R+A,C+B) :- tent(R,C), tent(R+A,C+B), dia(A,B), R+A>0, C+B>0, R+A<= MR, maxR(MR), C+B<=MC, maxC(MC).
:- tent(R1,C1), tent(R2,C2), neighbourDia(R1,C1,R2,C2).

%#show coupled/4.
#show tent/2.