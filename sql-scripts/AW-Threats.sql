/*
THREAT TYPES
Warlords:
	Slaver, 
	Hive queen, 
	Prophet, 
	Dictator, 
	Collector, 
	Alpha wolf

Grotesques:
	Cannibal, 
	Mutant, 
	Pain addict, 
	Disease vector, 
	Mindfucker, 
	Perversion of birth

Landscapes:
	Prison, 
	Breeding pit, 
	Furnace, 
	Mirage, 
	Maze, 
	Fortress 

Afflictions:
	Disease, 
	Condition, 
	Custom, 
	Delusion, 
	Sacrifice, 
	Barrier 

Brutes:
	Hunting pack, 
	Sybarites, 
	Enforcers, 
	Cult, 
	Mob, 
	Family 
 */

CREATE TABLE IF NOT EXISTS "AWThreatTypes" (
id integer primary key autoincrement, 
name text
);

CREATE TABLE IF NOT EXISTS "AWThreats" (
id integer primary key autoincrement, 
name text,
ThreatId integer, 
description text,

FOREIGN KEY (ThreatId) REFERENCES AWThreatTypes(id)
);

INSERT INTO AWThreatTypes (name) values('Warlords'); 
INSERT INTO AWThreatTypes (name) values('Grotesques'); 
INSERT INTO AWThreatTypes (name) values('Landscapes'); 
INSERT INTO AWThreatTypes (name) values('Afflictions'); 
INSERT INTO AWThreatTypes (name) values('Brutes'); 

INSERT INTO AWThreats (name, ThreatId) values('Slaver',1);
INSERT INTO AWThreats (name, ThreatId) values('Hive queen',1);
INSERT INTO AWThreats (name, ThreatId) values('Prophet',1);
INSERT INTO AWThreats (name, ThreatId) values('Dictator',1);
INSERT INTO AWThreats (name, ThreatId) values('Collector',1);
INSERT INTO AWThreats (name, ThreatId) values('Alpha wolf',1);
	 
INSERT INTO AWThreats (name, ThreatId) values('Cannibal',2);
INSERT INTO AWThreats (name, ThreatId) values('Mutant',2);	
INSERT INTO AWThreats (name, ThreatId) values('Pain addict',2);
INSERT INTO AWThreats (name, ThreatId) values('Disease vector',2);
INSERT INTO AWThreats (name, ThreatId) values('Mindfucker',2);
INSERT INTO AWThreats (name, ThreatId) values('Perversion of birth',2);

INSERT INTO AWThreats (name, ThreatId) values('Prison',3);
INSERT INTO AWThreats (name, ThreatId) values('Breeding pit',3);
INSERT INTO AWThreats (name, ThreatId) values('Furnace',3);
INSERT INTO AWThreats (name, ThreatId) values('Mirage',3);
INSERT INTO AWThreats (name, ThreatId) values('Maze',3);
INSERT INTO AWThreats (name, ThreatId) values('Fortress',3);

INSERT INTO AWThreats (name, ThreatId) values('Disease',4);
INSERT INTO AWThreats (name, ThreatId) values('Condition',4);
INSERT INTO AWThreats (name, ThreatId) values('Custom',4);
INSERT INTO AWThreats (name, ThreatId) values('Delusion',4);
INSERT INTO AWThreats (name, ThreatId) values('Sacrifice',4);
INSERT INTO AWThreats (name, ThreatId) values('Barrier',4);

INSERT INTO AWThreats (name, ThreatId) values('Hunting pack',5);
INSERT INTO AWThreats (name, ThreatId, description) values('Sybarites',5,'a person who is self-indulgent in their fondness for sensuous luxury');
INSERT INTO AWThreats (name, ThreatId) values('Enforcers',5);
INSERT INTO AWThreats (name, ThreatId) values('Cult',5);
INSERT INTO AWThreats (name, ThreatId) values('Mob',5);
INSERT INTO AWThreats (name, ThreatId) values('Family',5);
