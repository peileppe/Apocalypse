/*
STATS + AWCharacters and 

Cool+1 Hard=0 Hot+1 Sharp+2 Weird-1
Cool+1 Hard+1 Hot=0 Sharp+2 Weird-1
Cool-1 Hard+1 Hot=0 Sharp+2 Weird+1
Cool+2 Hard=0 Hot-1 Sharp+2 Weird-1

 */

CREATE TABLE IF NOT EXISTS "AWStats" (
id integer primary key autoincrement, 
ClassId integer, 
Cool integer,
Hard integer,
Hot integer,
Sharp integer,
Weird integer,

FOREIGN KEY (ClassId) REFERENCES AWClasses(id)
);

insert into AWStats (classid,cool,hard,hot,sharp,weird) values(1,1,0,1,2,-1);
insert into AWStats (classid,cool,hard,hot,sharp,weird) values(1,1,1,0,2,-1);
insert into AWStats (classid,cool,hard,hot,sharp,weird) values(1,-1,1,0,2,+1);
insert into AWStats (classid,cool,hard,hot,sharp,weird) values(1,2,0,-1,2,-1);

CREATE TABLE IF NOT EXISTS "AWCharacters" (
id integer primary key autoincrement, 
name text,
basicLook text, 
experience integer
);

insert into AWCharacters (name, basicLook, experience) values ('Angela','Kind Face',0)

CREATE TABLE IF NOT EXISTS "AWCampaignChars" (
id integer primary key autoincrement,
Charid integer,
CampaignLook text,
ClassId integer, 
CampaignId integer, 

FOREIGN KEY (Charid) REFERENCES AWCharacters(id),
FOREIGN KEY (Campaignid) REFERENCES AWCampaign(id),
FOREIGN KEY (Classid) REFERENCES AWClasses(id)
);

insert into AWCampaignChars (charid,CampaignLook,ClassId,CampaignId) values (1,'Compact body',1,1)

CREATE TABLE IF NOT EXISTS "AWCharacterHxs" (
id integer primary key autoincrement,
CharId integer,
OtherCharId integer,
Hx integer, 
CampaignId integer, 

FOREIGN KEY (Charid) REFERENCES AWCharacters(id),
FOREIGN KEY (OtherCharId) REFERENCES AWCharacters(id),
FOREIGN KEY (Campaignid) REFERENCES AWCampaign(id)
);

CREATE TABLE IF NOT EXISTS "AWCharacterGears" (
id integer primary key autoincrement,
Charid integer,
GearId integer,
CampaignId integer, 

FOREIGN KEY (Charid) REFERENCES AWCharacters(id),
FOREIGN KEY (GearId) REFERENCES AWGears(id),
FOREIGN KEY (Campaignid) REFERENCES AWCampaign(id)
);

insert into AWCharacterGears (charid,gearid,campaignid) values(1,2,1);
insert into AWCharacterGears (charid,gearid,campaignid) values(1,6,1);
insert into AWCharacterGears (charid,gearid,campaignid) values(1,7,1);

create view viewCharacter as select AWCharacters.id, AWCharacters.name, AWCharacters.basicLook, AWCampaignChars.CampaignLook, AWClasses.name as "class" 
from AWCharacters
join AWCampaignChars
on AWCampaignChars.id=AWCharacters.id
join AWClasses
on AWCampaignChars.ClassId=AWCLasses.id ; 

create view viewCharacterGears as select AWCharacterGears.id, AWCharacters.name, AWGear.name from AWCharacterGears
join AWGear
on AWCharacterGears.GearId=AWGear.id
join AWCharacters
on AWCharacterGears.Charid=AWCharacters.id ; 

CREATE TABLE IF NOT EXISTS "AWCharacterMoves" (
id integer primary key autoincrement,
Charid integer,
MoveId integer,
CampaignId integer, 

FOREIGN KEY (Charid) REFERENCES AWCharacters(id),
FOREIGN KEY (MoveId) REFERENCES AWMoves(id),
FOREIGN KEY (Campaignid) REFERENCES AWCampaign(id)
);

insert into AWCharacterMoves (charid,MoveId,campaignid) values(1,40,1);
insert into AWCharacterMoves (charid,MoveId,campaignid) values(1,34,1);

create view viewAWCharacterMoves as select AWCharacterMoves.id, AWCharacters.name, AWMoves.name, AWMoves.description from AWCharacterMoves
join AWMoves
on AWCharacterMoves.MoveId=AWMoves.id
join AWCharacters
on AWCharacterMoves.Charid=AWCharacters.id
