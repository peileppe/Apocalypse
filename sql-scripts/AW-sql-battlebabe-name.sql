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

