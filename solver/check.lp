%*
- LINUX call scheme:

  clingo --outf=1 tents.lp inputXY.lp | grep -v "^ANSWER" | clingo - check.lp solutionXY.lp

- LINUX example call:

  clingo --outf=1 tents.lp input01.lp | grep -v "^ANSWER" | clingo - check.lp solution01.lp
*%

%*
- WINDOWS call scheme:

  clingo --outf=1 tents.lp inputXY.lp | findstr /v "^ANSWER" | clingo - check.lp solutionXY.lp

- WINDOWS example call:

  clingo --outf=1 tents.lp input01.lp | findstr /v "^ANSWER" | clingo - check.lp solution01.lp
*%

difference(S) :- solution(S,tent(X,Y)), not tent(X,Y).
difference(S) :- solution(S), tent(X,Y), not solution(S,tent(X,Y)).

ok :- solution(S), not difference(S).
:- not ok.

#show tent/2.
