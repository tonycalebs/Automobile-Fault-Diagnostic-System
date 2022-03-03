# Automobile-Fault-Diagnostic-System

Prior to beginning the design of the rules, you should study a sample expert system for diagnosing car problems in order to define rules for diagnosing the appliance described by the user manual you have been given in class.
Here are some instructions for running the sample expert system:
Download the expert shell (see also below): exshell.pl 
Download the knowledge base containing the rules, and save it in the same folder as the expert shell (see also below): cars.pl
To run SWI-Prolog in Windows, start 'plwin.exe' or double-click the Prolog file in Explorer. Load the expert system shell and the cars knowledge base by typing:

?- consult(exshell).
?- consult(cars).

Ignore warnings about 'Singleton variables'. For further information go to Prolog Resources).
Start the program:

?- solve.
The program will ask you questions. Eventually the program succeeds (it comes up with a recommendation, prints a justification for this recommendation, and then prints 'Yes') or fails (cannot make a recommendation). If the program cannot make a recommendation, that means either the car is not broken, or the knowledge base does not have the information needed to diagnose the problem.
