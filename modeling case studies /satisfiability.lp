% given a formula - how do we test its satisifiability 


% it would require preprossesing where we transform from given connectives to have -> 


% example 

% a v not b 
{a}.
{b}.

:- not a, b. 


% (p V q) and (r)

{r}.
{p}.
{q}.

:- not p, not q.
:- not r.
