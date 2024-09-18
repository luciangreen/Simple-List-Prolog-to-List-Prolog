%% slp2lp.pl

/**
slp2lp([[f1,[a,b,c,d,e],(:-),[[+,[a,b,f]],[+,[c,f,g]],[+,[d,g,h]],[=,[h,e]]]]],Algorithm2).

Algorithm2= [[[n,f1],[[v,a],[v,b],[v,c],[v,d],[v,e]],":-",[[[n,+],[[v,a],[v,b],[v,f]]],[[n,+],[[v,c],[v,f],[v,g]]],[[n,+],[[v,d],[v,g],[v,h]]],[[n,=],[[v,h],[v,e]]]]]]

**/

:-include('la_strings.pl').

slp2lp(Algorithm1,Algorithm2) :-
	findall([[n,Name],Arguments4,Symbol2,Body2],(member(Function1,Algorithm1),Function1=[Name,Arguments1,Symbol1,Body1],symbol(Symbol1,Symbol2),
	findall(Arguments3,(member(Arguments2,Arguments1),slp2lp_variables(Arguments2,Arguments3)),Arguments4),
	process_body2(Body1,Body2)),Algorithm2).
	
	
symbol((:-),":-"):-!.
symbol(Symbol,Symbol) :-!.

slp2lp_variables(Name1,[v,Name1]) :- predicate_or_rule_name(Name1),!.
slp2lp_variables(Name,Name) :- !.

/**
process_body(Body1,Body2) :-
	findall(*,(member(Statement1,Body1
process_body(Body1,[],Body2) :-

**/

%%predicate_or_rule_name([A,B]) :- atom(A),is_list(B),!.
predicate_or_rule_name(A) :- atom(A),!.


process_body2([],[]):-!.%%,Body3


%%process_body2([],Body,Body) :- !.
process_body2(Body1,Body2%%,Body3
) :-
        Body1=[[Statements1|Statements1a]|Statements2
        ],
	
		not(predicate_or_rule_name(Statements1)),
	process_body2([Statements1],Body3), %% 2->1

	process_body2(Statements1a,Body4),
        process_body2(Statements2,Body5),
    
	append([Body3,Body4],Body6),
	append([[Body6],Body5],Body2),
	!.



        
process_body2(Body1,Body2) :-
        Body1=[[not,[Statement]]|Statements2
        ],

        process_body2([Statement],Body3),
        process_body2(Statements2,Body4),
		  append([[n,not]],Body3,Body5),
		  append([Body5],Body4
        ,Body2),

	!.
	
	


process_body2(Body1,Body2) :-
        Body1=[[or,[Statements1,Statements2]]|Statements3],
        process_body2([Statements1],Body3),
        process_body2([Statements2],Body4),
        process_body2(Statements3,Body5),
        append(Body3,Body4,Body34),
        Body6=[[n,or],Body34
        ],
        append([Body6],Body5,Body2),
        !.


process_body2(Body1,Body2) :-
        Body1=[["->",[Statements1,Statements2]]|Statements3],
        process_body2([Statements1],Body3), 
    	  process_body2([Statements2],Body4),

        process_body2(Statements3,Body5),
        append(Body3,Body4,Body34),
        Body6=[[n,"->"],Body34
        ],
        append([Body6],Body5,Body2),

        !.




process_body2(Body1,Body2) :-
        Body1=[["->",[Statements1,Statements2,Statements2a]]|Statements3],
        process_body2([Statements1],Body3),
        process_body2([Statements2],Body4),
        process_body2([Statements2a],Body5),
        process_body2(Statements3,Body6),
        append_list2([Body3,Body4,Body5],Body345),
        Body7=[[n,"->"],Body345],        
        append([Body7],Body6,Body2),

        !.


process_body2(Body1,Body2) :-
	Body1=[Statement|Statements],
	not(predicate_or_rule_name(Statement)),
	process_statement1(Statement,Result1),
	process_body2(Statements,Result2),
   append_list2([Result1,Result2],Body2),!.
   
   
process_statement1(Statement,Result1) :-
	((Statement=[Name,Arguments],
	findall(Name2,(member(Argument,Arguments),
	(predicate_or_rule_name(Argument)->Name2=[v,Argument];
	Name2=Argument)),Result2),
	Result1=[[[n,Name],Result2]])->true;
	((Statement=[Name],
	Result1=[[[n,Name]]]))).
	