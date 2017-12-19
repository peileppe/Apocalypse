/*
 * 
Angel name 

Doug, 
Bong, 
Abel, 
Boox, 
T-B, 
Kala, 
Baiv, 
Charn, 
Javi, 
Ruthel, 
Weiss, 
Jayn, 
Neel, 
Kimu, 
Lano, 
Diy, 
Dez. Doc, 
Core, 
Wheels, 
Buzz, 
Keyph, 
Gabe, 
Bizo, 
Bish, 
Line, 
Inch, 
Grip,
Setter
 
 */

create table AWCharNames (
id integer primary key autoincrement, 
name text, 
classId integer, 
FOREIGN KEY (classId) REFERENCES AWClasses(id)
); 

insert into AWCharNames (name, classid) values ('Doug', 1); 
insert into AWCharNames (name, classid) values ('Bong', 1); 
insert into AWCharNames (name, classid) values ('Abel', 1); 
insert into AWCharNames (name, classid) values ('Boox', 1); 
insert into AWCharNames (name, classid) values ('T-B', 1); 
insert into AWCharNames (name, classid) values ('Kala', 1); 
insert into AWCharNames (name, classid) values ('Baiv', 1); 
insert into AWCharNames (name, classid) values ('Charn', 1); 
insert into AWCharNames (name, classid) values ('Javi', 1); 
insert into AWCharNames (name, classid) values ('Ruthel', 1); 
insert into AWCharNames (name, classid) values ('Weiss', 1); 
insert into AWCharNames (name, classid) values ('Jayn', 1); 
insert into AWCharNames (name, classid) values ('Neel', 1); 
insert into AWCharNames (name, classid) values ('Kimu', 1); 
insert into AWCharNames (name, classid) values ('Lano', 1); 
insert into AWCharNames (name, classid) values ('Diy', 1); 
insert into AWCharNames (name, classid) values ('Dez. Doc', 1); 
insert into AWCharNames (name, classid) values ('Core', 1); 
insert into AWCharNames (name, classid) values ('Wheels', 1); 
insert into AWCharNames (name, classid) values ('Buzz', 1); 
insert into AWCharNames (name, classid) values ('Keyph', 1); 
insert into AWCharNames (name, classid) values ('Gabe', 1); 
insert into AWCharNames (name, classid) values ('Bizo', 1); 
insert into AWCharNames (name, classid) values ('Bish', 1); 
insert into AWCharNames (name, classid) values ('Line', 1); 
insert into AWCharNames (name, classid) values ('Inch', 1); 
insert into AWCharNames (name, classid) values ('Grip',1); 
insert into AWCharNames (name, classid) values ('Setter',1); 

