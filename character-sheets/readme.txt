Game
====

Actions
-------
1 - 6 : failed
7 - 9 : penalty
10-12 : success

Stats: str(hard), int(sharp), chm(hot), dex(cool), psi(weird)
------
 - hard (physical strength, intimidation), 
 - sharp (intelligence, perception, insight), 
 - hot (charisma), 
 - cool (stealth, keeping your shit together)
 - weird (related to the psychic maelstrom). 
They go from -1 to +3. 
History is an additional stat, which represents the familiarity (but not necessarily friendliness) between two player characters. 
It is used for rolling assist / interfere moves.

Classes:
--------
Angel (sharp) – field medic with scalpels, morphine. Can channel the psychic maelstrom for healing purposes, with possibly unexpected results. 
Battlebabe (cool) – warrior with guns. Huge guns. Literally has a move called “dangerous and sexy”.
Brainer (weird) – Your run-of-the-mill psyker. Can scan people’s brains and control them.
Chopper (hard) – Leader of a biker gang. 
Gunlugger (hard) – “Rambo” type
Hocus (weird) – Spiritual guide of a small cult of people.
Operator – invested into various gigs around the place, and is expected to ensure they all run smoothly.
Savvyhead – Essentially a techpriest. Can talk to machines.
Skinner (hot) – A beautiful, graceful, hypnotically breathtaking person in the apocalypse. Has sort of a succubus vibe to it.

data:                 hard, sharp, hot, cool, weird
=====
"angel":        {"stat": [ 0, 2, 1, 1, 1], "skill": "cure"},
"battlebabe":   {"stat": [ 1, 1, 1, 3,-1], "skill": "doublestrike"}, 
"brainer":      {"stat": [ 1, 2, 0,-1, 3], "skill": "dominate"},
"chopper":      {"stat": [ 2, 1,-1, 2, 1], "skill": "leader"},
"gunlugger":    {"stat": [ 3, 0, 0, 2, 0], "skill": "rage"}, 
"hocus":        {"stat": [-1, 2, 1, 0, 3], "skill": "confuse"},
"operator":     {"stat": [ 1, 2, 0, 0, 2], "skill": "diplomacy"}
"savvyhead":    {"stat": [ 1, 2, 0, 1, 1], "skill": "hack"},    
"skinner":      {"stat": [ 0, 0, 3, 1, 1], "skill": "charm"}

sqlite> select AWclasses.name, hard, sharp, hot, cool, weird from AWstats, AWClasses where AWstats.id=AWClasses.id ; 
name        Hard        Sharp       Hot         Cool        Weird     
----------  ----------  ----------  ----------  ----------  ----------
Angel       0           2           1           1           -1        
Battlebabe  1           2           0           1           -1        
Brainer     1           2           0           -1          1         
Chopper     0           2           -1          2           -1        

