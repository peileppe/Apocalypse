/*
 * 
BattleBabe name 

Snow,  
Crimson,  
Shadow,  
Azure,  
Midnight,  
Scarlet,  
Violetta, 
Amber, 
Rouge, 
Damson, 
Sunset, 
Emerald, 
Ruby.
Raksha,  
Kickskirt,  
Kite,  
Monsoon,  
Smith,  
Beastie,  
Baaba, 
Melody, 
Mara, 
Tavin, 
Absinthe, 
Honeytree
 
 */

create table IF NOT EXISTS AWCharNames (
id integer primary key autoincrement, 
name text, 
classId integer, 
FOREIGN KEY (classId) REFERENCES AWClasses(id)
); 

insert into AWCharNames (name, classid) values ('Snow', 2); 
insert into AWCharNames (name, classid) values ('Crimson',  2); 
insert into AWCharNames (name, classid) values ('Shadow',  2); 
insert into AWCharNames (name, classid) values ('Azure',  2); 
insert into AWCharNames (name, classid) values ('Midnight',  2); 
insert into AWCharNames (name, classid) values ('Scarlet',  2); 
insert into AWCharNames (name, classid) values ('Violetta', 2); 
insert into AWCharNames (name, classid) values ('Amber', 2); 
insert into AWCharNames (name, classid) values ('Rouge', 2); 
insert into AWCharNames (name, classid) values ('Damson', 2); 
insert into AWCharNames (name, classid) values ('Sunset', 2); 
insert into AWCharNames (name, classid) values ('Emerald', 2); 
insert into AWCharNames (name, classid) values ('Ruby',2); 
insert into AWCharNames (name, classid) values ('Raksha',  2); 
insert into AWCharNames (name, classid) values ('Kickskirt',  2); 
insert into AWCharNames (name, classid) values ('Kite',  2); 
insert into AWCharNames (name, classid) values ('Monsoon',  2); 
insert into AWCharNames (name, classid) values ('Smith',  2); 
insert into AWCharNames (name, classid) values ('Beastie',  2); 
insert into AWCharNames (name, classid) values ('Baaba', 2); 
insert into AWCharNames (name, classid) values ('Melody', 2); 
insert into AWCharNames (name, classid) values ('Mara', 2); 
insert into AWCharNames (name, classid) values ('Tavin', 2); 
insert into AWCharNames (name, classid) values ('Absinthe', 2); 
insert into AWCharNames (name, classid) values ('Honeytree', 2); 

