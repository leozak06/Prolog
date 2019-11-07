Elise Brodie, V00874510
Leoza Kabir, V00840048

CSC 322
Spring 2019
Project 2

File: 
- pure_literal_eliminate.pl (Task 1).
- Task 3.pdf


Task 1:

pure_literal_eliminate\4: 

When pure_literal_eliminate(Clauses,Vars,El_Clauses,El_Vars) is queried, El_Clauses will be unified with the list
Clauses without the clauses that contain pure literals and El_Vars will be unified with the list Vars with any pure
literals set to their polarity.  

A pure literal is a literal that has the same polarity for every instance. In a list of all Polarity-Variable pairs 
in the clauses, a pure literal can be identified by only appearing once. Other literals will appear twice, once for 
each polarity. 

pure_literal_eliminate\4 uses the following predicates: 
flatten\2 - is true for (Lists, List) when List contains all of the elements in every List in Lists 
list_to_set\2 - is true for (List, Set) when Set contains all of the elements in List with no repeates
purify\2 - is true for (Literals, NewLiterals) when NewLiterals contains all of the elements in Literals 
			except any pure literals
occurs\2 - is true for (Var, Literals) if Var appears in the list of Literals
notoccurs\2 - is true for (Var, Literals) if Var does not appear in the list of Literals
remove\3 - is true for(Var, Xs, Zs) if Zs contains every element of Xs except Var
eliminate_clauses\3 - is true for (PureLiterals, Clauses, El_Clauses) if El_Clauses is a list containing
						all of the lists in Clauses except the ones that contain an element in PureLiterals
contains_pure\2 - is true for (PureLiterals, Clause) if the list Clause contains an element in the list PureLiterals
set_vars\3 - is true for (PureLiterals, Vars, El_Vars) if El_Vars contains the polarity of any elements that appear 
				both in PureLiterals and Vars and any element that only appears in Vars
set_pure\3 - is true for (Pol-PureLiteral, Vars, Set_Vars) if Set_Vars contains all elements in Vars, with every 
				instance of PureLiteral in Vars is changed to Pol
				
				

				
Task 3:
Task 3 evaluates the two preprocessing steps - Pure Literal Elimination and Static Variable Ordering. While pure literal elimination
eliminates all occurances other than the pure literals, static variable ordering order variables according to the frequences of their
occurances. Both of these procedures allows for faster and efficient implementation but pure literal elimination is a more idea preprocessing
step based on our evaluation. 


