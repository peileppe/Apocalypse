/*
STATS 

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