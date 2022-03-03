%
% By Akor Esther I.
%
% To start it, give PROLOG the goal: 
%  solve.
% Knowledge Base for simple automotive diagnostic expert system. 
% Top level goal, starts search.
rule((fix(Advice) :- 
 (bad_component(X),fix(X, Advice))), 100).

 % rules to infer bad component of the failed system:
rule((bad_component(starter) :-  
 (bad_system(starter_system),lights(come_on))),50).
 rule((bad_component(clutch) :- 
 (bad_system(loose_clutch), not(bad_system(starter_system)), lights(come_on),   
 not(plugs(dirty)), not(tuned_recently))),80).
rule((bad_component(battery) :-  
 (bad_system(starter_system),not(lights(come_on)))),90).
rule((bad_component(timing) :-  
 (bad_system(ignition_system), not(tuned_recently))),80).
rule((bad_component(plugs) :-  
 (bad_system(ignition_system),plugs(dirty))),90).
rule((bad_component(ignition_wires) :- 
 (bad_system(ignition_system),  
 not(plugs(dirty)), tuned_recently)),80).

 
% Rules to infer system that failed.
rule((bad_system(starter_system) :-  
 (not(car_starts), not(turns_over))),90).
rule((bad_system(ignition_system) :-  
 (not(car_starts), turns_over,fuel_in_carb)),80).
rule((bad_system(ignition_system) :-  
 (runs(rough),fuel_in_carb)),80).
rule((bad_system(ignition_system) :-  
 (car_starts, runs(dies),fuel_in_carb)),60).
rule((bad_system(loose_clutch) :-  
 (weak_clutch_plates, fuel_in_carb)),60).

 % Rules to make reccommendation for repairs.
rule(fix(starter, 'replace starter'),100). 
rule(fix(battery, 'replace or recharge battery'),100). 
rule(fix(timing, 'get the timing adjusted'),100). 
rule(fix(plugs, 'replace spark plugs'),100). 
rule(fix(ignition_wires, 'check ignition wires'),100).
rule(fix(clutch, 'Replace Clutch Plates'),100).

% askable descriptions
askable(weak_clutch_plates).
askable(car_starts). 
askable(turns_over). 
askable(lights(_)). 
askable(runs(_)). 
askable(fuel_in_carb). 
askable(tuned_recently). 
askable(plugs(_)).