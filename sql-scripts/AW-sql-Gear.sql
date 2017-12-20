/*
GEAR
You get:
- angel kit
- 1 small practical weapon
- oddments worth 1-barter
- fashion suitable to your look, including at your option a piece worth 1-armor (you detail)
- .38 revolver (2-harm close reload loud)
- 9mm (2-harm close loud)
- big knife (2-harm hand)
- sawed-off (3-harm close reload messy)
- stun gun (s-harm hand reload) 
 */

CREATE TABLE IF NOT EXISTS "AWGearTypes" (
id integer primary key autoincrement, 
name text
);


CREATE TABLE IF NOT EXISTS "AWGear" (
id integer primary key autoincrement, 
name text, 
GearId integer, 
description text,

FOREIGN KEY (GearId) REFERENCES AWGearTypes(id)
);

INSERT INTO AWGearTypes values(1,'Weapon');
INSERT INTO AWGearTypes values(2,'Armor');
INSERT INTO AWGearTypes values(3,'Misc. Equipment');

INSERT INTO AWGear (name,GearId,description) values('.38 revolver',1,'(2-harm close reload loud)');
INSERT INTO AWGear (name,GearId,description) values('9mm',1,'(2-harm close loud)');
INSERT INTO AWGear (name,GearId,description) values('big knife',1,'(2-harm hand)');
INSERT INTO AWGear (name,GearId,description) values('sawed-off',1,'(3-harm close reload messy)');
INSERT INTO AWGear (name,GearId,description) values('stun gun',1,'(s-harm hand reload)');

INSERT INTO AWGear (name,GearId,description) values('Leather jacket',2,'(1-armor)');

INSERT INTO AWGear (name,GearId,description) values('angel kit',3,'scissors,  rags,  tape,  needles,  clamps,  gloves,  chill  coils,  wipes,  alcohol,  injectable tourniquets  &  bloodslower,  instant  blood  packets  (coffee reddener),  tubes  of  meatmesh,  bonepins  &  site  injectors, biostabs,  chemostabs,  narcostabs  (chillstabs)  in  quantity');

