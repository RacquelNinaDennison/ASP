% given a set of reviwers and their preffered papers and conflicts, we need to assign them in a "nice" assignment 


% problem instance 

paper(reinforcementLearning).
paper(defeasibleReasoning).
paper(virtualReality).

% reviwers
reviewer(benji).
reviewer(tommie).
reviewer(james).
reviewer(melissa).

preferred papers

classA(reinforcementLearning,tommie).
classA(virtualReality,james).


%classB

classB(defeasibleReasoning,tommie).
classB(reinforcementLearning,james).


% conflicts 

coi(reinforcementLearning,melissa).

%###############problem class

{assignment(P,R): reviewer(R)} = 3 :- paper(P).


:- assignment(P,R), coi(P,R). 
:- assignment(P,R), not classA(P,R), not classB(P,R).
% review atleast 6 and at most 9 
:- not 6 {assignment(P,R):paper(P)} 9 , reviewer(R). 


assignedB(P,R) :- classB(R,P), assignment(P,R).



#minimize {1,P,R : assignedB(P,R), paper(P), reviewer(R)}.