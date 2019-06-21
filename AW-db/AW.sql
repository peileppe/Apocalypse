/* merging ALL SQL script
 * Jan-10 2018
 */
PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE AWClasses (id integer primary key autoincrement, name text, description text );
INSERT INTO "AWClasses" VALUES(-2,'special','special moves');
INSERT INTO "AWClasses" VALUES(-1,'basic','basic moves');
INSERT INTO "AWClasses" VALUES(1,'Angel','When you''re lying in the dust of Apocalypse World guts aspilled, for whom do you pray? the gods? they''re long gone. Your beloved comrades? Fuckers all, or you wouldn''t be here to begin with. Your precious old mother? She''s a darling but she can''t put an intestine back inside so it''ll stay. No you pray for some grinning kid or veteran or just someone with a heartshocker and a hand with sutures and a 6-pack of morphine. And when that someone comes, that''s an angel.');
INSERT INTO "AWClasses" VALUES(2,'Battlebabe','Even in a place as dangerous as Apocalypse World, battlebabes are, well. They''re the ones you should walk away from, eyes down, but you can''t. They''re the ones like the seductive blue crackling light, y''know? You mistake looking at them for falling in love, and you get too close and it''s a zillion volts and your wings burn off like paper. Dangerous.');
INSERT INTO "AWClasses" VALUES(3,'Brainer','Brainers are the weird psycho psychic mindfucks of Apocalypse World. They have brain control, puppet strings, creepy hearts, dead souls, and eyes like broken things. They stand in your peripheral vision and whisper into your head, staring. They clamp lenses over your eyes and read your secrets. They''re just the sort of tasteful accoutrement that no well-appointed hardhold can do without.');
INSERT INTO "AWClasses" VALUES(4,'Chopper','Apocalypse World is all scarcity, of course it is. There''s not enough wholesome food, not enough untainted water, not enough security, not enough light, not enough electricity, not enough children, not enough hope. However, the Golden Age Past did leave us two things: enough gasoline, enough bullets. Come the end, I guess the fuckers didn''t need them like they thought they would. So chopper, there you are. Enough for you.');
INSERT INTO "AWClasses" VALUES(5,'Driver','Came the apocalypse, and the infrastructure of the Golden Age tore apart. Roads heaved and split. Lines of life and communication shattered. Cities, cut off from one another, raged like smashed anthills, then burned, then fell. A few living still remember it: every horizon scorching hot with civilization in flames, light to put out the stars and moon, smoke to put out the sun. In Apocalypse World the horizons are dark, and no roads go to them.');
INSERT INTO "AWClasses" VALUES(6,'Gunlugger','Apocalypse World is a mean, ugly, violent place. Law and society have broken down completely. What''s yours is yours only while you can hold it in your hands. There''s no peace. There''s no stability but what you carve, inch by inch, out of the concrete and dirt, and then defend with murder and blood. Sometimes the obvious move is the right one.');
INSERT INTO "AWClasses" VALUES(7,'Hardholder','There is no government, no society, in Apocalypse World. When hardholders ruled whole continents, when they waged war on the other side of the world instead of with the hold across the burn-flat, when their armies numbered in the hundreds of thousands and they had fucking boats to hold their fucking airplanes on, that was the golden age of legend. Now, anyone with a concrete compound and a gang of gunluggers can claim the title. What other authority is there?');
INSERT INTO "AWClasses" VALUES(8,'Hocus','Now it should be crystal fucking obvious that the gods have abandoned Apocalypse World. Maybe in the golden age, with its one nation under god and its in god we trust, maybe then the gods were real. Fucked if I know. All I know is that now they''re gone daddy gone. My theory is that these weird hocus fuckers, when they say ''the gods'' what they really mean is the miasma left over from the explosion of psychic hate and desperation that gave Apocalypse World its birth. Friends, that''s our creator now.');
INSERT INTO "AWClasses" VALUES(9,'Operator','In Apocalypse World, here''s what you''ve got, right? You''ve got Dremmer and Balls on one side, warlord slaver and his skinny fucking enforcer, raiding from their stronghold of concrete and iron spikes. On the other side you''ve got the barge people, living their short disease-crippled lives up and down the dead poisoned river. Further along and you''ve got Lighthouse, a men-and-women hunger cult gone wrong barricaded in on the edge of the breeding pit burn flats. You, you just want to make your way and have some freedom â€” but this is what you''ve got to work with. Not fucking rosy.');
INSERT INTO "AWClasses" VALUES(10,'Savvyhead','If there''s one fucking thing you can count on in Apocalypse World, it''s: things break.');
INSERT INTO "AWClasses" VALUES(11,'Skinner','Even in the filth of Apocalypse World, there''s food that isn''t death on a spit, music that isn''t shrieking hyenas, thoughts that aren''t afraid, bodies that aren''t used meat, sex that isn''t rutting, dancing that''s real. There are moments that are more than stench, smoke, rage and blood. Anything beautiful left in this ugly ass world, skinners hold it. Will they share it with you? What do you offer them?');
CREATE TABLE "AWMoves" (
id integer primary key autoincrement, 
name text, 
classId integer, 
description text ,

FOREIGN KEY (classId) REFERENCES AWClasses(id)
);
INSERT INTO "AWMoves" VALUES(1,'A no shit driver',5,NULL);
INSERT INTO "AWMoves" VALUES(2,'An arresting skinner',11,NULL);
INSERT INTO "AWMoves" VALUES(3,'Artful & gracious',11,NULL);
INSERT INTO "AWMoves" VALUES(4,'Augury',-2,NULL);
INSERT INTO "AWMoves" VALUES(5,'Battle-hardened',6,NULL);
INSERT INTO "AWMoves" VALUES(6,'Battlefield grace',1,'while you are caring for people, not fighting, you get +1armor');
INSERT INTO "AWMoves" VALUES(7,'Battlefield instincts',6,NULL);
INSERT INTO "AWMoves" VALUES(8,'Bloodcrazed',6,NULL);
INSERT INTO "AWMoves" VALUES(9,'Bonefeel',10,NULL);
INSERT INTO "AWMoves" VALUES(10,'Breathtaking',11,NULL);
INSERT INTO "AWMoves" VALUES(11,'Casual brain receptivity',3,NULL);
INSERT INTO "AWMoves" VALUES(12,'Charismatic',8,NULL);
INSERT INTO "AWMoves" VALUES(13,'Collector',5,NULL);
INSERT INTO "AWMoves" VALUES(14,'Dangerous & sexy',2,NULL);
INSERT INTO "AWMoves" VALUES(15,'Daredevil',5,NULL);
INSERT INTO "AWMoves" VALUES(16,'Deep brain scan',3,NULL);
INSERT INTO "AWMoves" VALUES(17,'Deep insights',10,NULL);
INSERT INTO "AWMoves" VALUES(18,'Direct brain-whisper projection',3,NULL);
INSERT INTO "AWMoves" VALUES(19,'Divine protection',8,NULL);
INSERT INTO "AWMoves" VALUES(20,'Do something under fire',-1,NULL);
INSERT INTO "AWMoves" VALUES(21,'Easy to trust',9,NULL);
INSERT INTO "AWMoves" VALUES(22,'Eye on the door',9,NULL);
INSERT INTO "AWMoves" VALUES(23,'Follow through on someone else''s move',-2,NULL);
INSERT INTO "AWMoves" VALUES(24,'Fortunes',8,NULL);
INSERT INTO "AWMoves" VALUES(25,'Fuck this shit',6,NULL);
INSERT INTO "AWMoves" VALUES(26,'Fucking thieves',4,NULL);
INSERT INTO "AWMoves" VALUES(27,'Fucking wacknut',8,NULL);
INSERT INTO "AWMoves" VALUES(28,'Frenzy',8,NULL);
INSERT INTO "AWMoves" VALUES(29,'Give 1-barter to someone',-2,NULL);
INSERT INTO "AWMoves" VALUES(30,'Go aggro on someone',-1,NULL);
INSERT INTO "AWMoves" VALUES(31,'Go into a holding''s market',-2,NULL);
INSERT INTO "AWMoves" VALUES(32,'Good in the clinch',5,NULL);
INSERT INTO "AWMoves" VALUES(33,'Heal another character''s harm',-2,NULL);
INSERT INTO "AWMoves" VALUES(34,'Healing touch',1,'when  you  put  your  hands  skin-to-skin  on  a wounded person and open your brain to them, roll+weird. On a  10+,  heal  1  segment.  On  a  7â€“9,  heal  1  segment,  but  you''re acting  under  fire  from  your  patient''s  brain.  On  a  miss:  first, you  don''t  heal  them.  Second,  you''ve  opened  both  your  brain and theirs to the world''s psychic maelstrom, without protection or  preparation.  For  you,  and  for  your  patient  if  your  patient''s a fellow player''s character, treat it as though you''ve made that move  and  missed  the  roll.  For  patients  belonging  to  the  MC,  their experience and fate are up to the MC.');
INSERT INTO "AWMoves" VALUES(35,'Help or interfere',-1,NULL);
INSERT INTO "AWMoves" VALUES(36,'Hypnotic',11,NULL);
INSERT INTO "AWMoves" VALUES(37,'Ice cold',2,NULL);
INSERT INTO "AWMoves" VALUES(38,'Impossible reflexes',2,NULL);
INSERT INTO "AWMoves" VALUES(39,'In-brain puppet strings',3,NULL);
INSERT INTO "AWMoves" VALUES(40,'Infirmary',1,'you get an infirmary, a workspace with life support,  a drug lab and a crew of 2 (Shigusa & Mox, maybe). Get patients  into it and you can work on them like a savvyhead on tech');
INSERT INTO "AWMoves" VALUES(41,'Inflict harm on another character',-2,NULL);
INSERT INTO "AWMoves" VALUES(42,'Insano like Drano',6,NULL);
INSERT INTO "AWMoves" VALUES(43,'Insight',-2,NULL);
INSERT INTO "AWMoves" VALUES(44,'Leadership',7,NULL);
INSERT INTO "AWMoves" VALUES(45,'Lost',11,NULL);
INSERT INTO "AWMoves" VALUES(46,'Maintain an untenable position or course',-2,NULL);
INSERT INTO "AWMoves" VALUES(47,'Make known you want a thing',-2,NULL);
INSERT INTO "AWMoves" VALUES(48,'Merciless',2,NULL);
INSERT INTO "AWMoves" VALUES(49,'Moonlighting',9,NULL);
INSERT INTO "AWMoves" VALUES(50,'My other car is a tank',5,NULL);
INSERT INTO "AWMoves" VALUES(51,'NOT TO BE FUCKED WITH',6,NULL);
INSERT INTO "AWMoves" VALUES(52,'Oftener right',10,NULL);
INSERT INTO "AWMoves" VALUES(53,'Open your brain to the world''s psychic maelstrom',-1,NULL);
INSERT INTO "AWMoves" VALUES(54,'Opportunistic',9,NULL);
INSERT INTO "AWMoves" VALUES(55,'Pack alpha',4,NULL);
INSERT INTO "AWMoves" VALUES(56,'Perfect instincts',2,NULL);
INSERT INTO "AWMoves" VALUES(57,'Prepared for the inevitable',6,NULL);
INSERT INTO "AWMoves" VALUES(58,'Preternatural at-will brain attunement',3,NULL);
INSERT INTO "AWMoves" VALUES(59,'Professional compassion',1,'you can choose to roll+sharp instead of roll+Hx when you help someone who''s rolling');
INSERT INTO "AWMoves" VALUES(60,'Provide covering fire',-2,NULL);
INSERT INTO "AWMoves" VALUES(61,'Read a charged situation',-1,NULL);
INSERT INTO "AWMoves" VALUES(62,'Read a person',-1,NULL);
INSERT INTO "AWMoves" VALUES(63,'Reality''s fraying edge',10,NULL);
INSERT INTO "AWMoves" VALUES(64,'Reputation',9,NULL);
INSERT INTO "AWMoves" VALUES(65,'Seeing souls',8,NULL);
INSERT INTO "AWMoves" VALUES(66,'Seduce or manipulate someone',-1,NULL);
INSERT INTO "AWMoves" VALUES(67,'Seize something by force',-1,NULL);
INSERT INTO "AWMoves" VALUES(68,'Session end',-1,NULL);
INSERT INTO "AWMoves" VALUES(69,'Sixth sense',1,'when you open your brain to the world''s psychic maelstrom, roll+sharp instead of roll+weird.');
INSERT INTO "AWMoves" VALUES(70,'Spooky intense',10,NULL);
INSERT INTO "AWMoves" VALUES(71,'Stay the fuck down',-2,NULL);
INSERT INTO "AWMoves" VALUES(72,'Suffer harm',-2,NULL);
INSERT INTO "AWMoves" VALUES(73,'Things speak',10,NULL);
INSERT INTO "AWMoves" VALUES(74,'Touched by death',1,'whenever someone in your care dies, you get +1weird (max +3)');
INSERT INTO "AWMoves" VALUES(75,'Unnatural lust transfixion',3,NULL);
INSERT INTO "AWMoves" VALUES(76,'Visions of death',2,NULL);
INSERT INTO "AWMoves" VALUES(77,'Wealth',7,NULL);
INSERT INTO "AWMoves" VALUES(78,'Weather eye',5,NULL);
CREATE TABLE AWCharNames (
id integer primary key autoincrement, 
name text, 
classId integer, 
FOREIGN KEY (classId) REFERENCES AWClasses(id)
);
INSERT INTO "AWCharNames" VALUES(1,'Doug',1);
INSERT INTO "AWCharNames" VALUES(2,'Bong',1);
INSERT INTO "AWCharNames" VALUES(3,'Abel',1);
INSERT INTO "AWCharNames" VALUES(4,'Boox',1);
INSERT INTO "AWCharNames" VALUES(5,'T-B',1);
INSERT INTO "AWCharNames" VALUES(6,'Kala',1);
INSERT INTO "AWCharNames" VALUES(7,'Baiv',1);
INSERT INTO "AWCharNames" VALUES(8,'Charn',1);
INSERT INTO "AWCharNames" VALUES(9,'Javi',1);
INSERT INTO "AWCharNames" VALUES(10,'Ruthel',1);
INSERT INTO "AWCharNames" VALUES(11,'Weiss',1);
INSERT INTO "AWCharNames" VALUES(12,'Jayn',1);
INSERT INTO "AWCharNames" VALUES(13,'Neel',1);
INSERT INTO "AWCharNames" VALUES(14,'Kimu',1);
INSERT INTO "AWCharNames" VALUES(15,'Lano',1);
INSERT INTO "AWCharNames" VALUES(16,'Diy',1);
INSERT INTO "AWCharNames" VALUES(17,'Dez. Doc',1);
INSERT INTO "AWCharNames" VALUES(18,'Core',1);
INSERT INTO "AWCharNames" VALUES(19,'Wheels',1);
INSERT INTO "AWCharNames" VALUES(20,'Buzz',1);
INSERT INTO "AWCharNames" VALUES(21,'Keyph',1);
INSERT INTO "AWCharNames" VALUES(22,'Gabe',1);
INSERT INTO "AWCharNames" VALUES(23,'Bizo',1);
INSERT INTO "AWCharNames" VALUES(24,'Bish',1);
INSERT INTO "AWCharNames" VALUES(25,'Line',1);
INSERT INTO "AWCharNames" VALUES(26,'Inch',1);
INSERT INTO "AWCharNames" VALUES(27,'Grip',1);
INSERT INTO "AWCharNames" VALUES(28,'Setter',1);
INSERT INTO "AWCharNames" VALUES(29,'Snow',2);
INSERT INTO "AWCharNames" VALUES(30,'Crimson',2);
INSERT INTO "AWCharNames" VALUES(31,'Shadow',2);
INSERT INTO "AWCharNames" VALUES(32,'Azure',2);
INSERT INTO "AWCharNames" VALUES(33,'Midnight',2);
INSERT INTO "AWCharNames" VALUES(34,'Scarlet',2);
INSERT INTO "AWCharNames" VALUES(35,'Violetta',2);
INSERT INTO "AWCharNames" VALUES(36,'Amber',2);
INSERT INTO "AWCharNames" VALUES(37,'Rouge',2);
INSERT INTO "AWCharNames" VALUES(38,'Damson',2);
INSERT INTO "AWCharNames" VALUES(39,'Sunset',2);
INSERT INTO "AWCharNames" VALUES(40,'Emerald',2);
INSERT INTO "AWCharNames" VALUES(41,'Ruby',2);
INSERT INTO "AWCharNames" VALUES(42,'Raksha',2);
INSERT INTO "AWCharNames" VALUES(43,'Kickskirt',2);
INSERT INTO "AWCharNames" VALUES(44,'Kite',2);
INSERT INTO "AWCharNames" VALUES(45,'Monsoon',2);
INSERT INTO "AWCharNames" VALUES(46,'Smith',2);
INSERT INTO "AWCharNames" VALUES(47,'Beastie',2);
INSERT INTO "AWCharNames" VALUES(48,'Baaba',2);
INSERT INTO "AWCharNames" VALUES(49,'Melody',2);
INSERT INTO "AWCharNames" VALUES(50,'Mara',2);
INSERT INTO "AWCharNames" VALUES(51,'Tavin',2);
INSERT INTO "AWCharNames" VALUES(52,'Absinthe',2);
INSERT INTO "AWCharNames" VALUES(53,'Honeytree',2);
CREATE TABLE AWKeys
    (
       keyId integer primary key autoincrement,
       KeyName nvarchar(8), 
       KeyValue text
    );
INSERT INTO "AWKeys" VALUES(1,'Version','1.0');
CREATE TABLE "AWGearTypes" (
id integer primary key autoincrement, 
name text
);
INSERT INTO "AWGearTypes" VALUES(1,'Weapon');
INSERT INTO "AWGearTypes" VALUES(2,'Armor');
INSERT INTO "AWGearTypes" VALUES(3,'Misc. Equipment');
CREATE TABLE "AWGear" (
id integer primary key autoincrement, 
name text, 
GearId integer, 
description text,

FOREIGN KEY (GearId) REFERENCES AWGearTypes(id)
);
INSERT INTO "AWGear" VALUES(1,'.38 revolver',1,'(2-harm close reload loud)');
INSERT INTO "AWGear" VALUES(2,'9mm',1,'(2-harm close loud)');
INSERT INTO "AWGear" VALUES(3,'big knife',1,'(2-harm hand)');
INSERT INTO "AWGear" VALUES(4,'sawed-off',1,'(3-harm close reload messy)');
INSERT INTO "AWGear" VALUES(5,'stun gun',1,'(s-harm hand reload)');
INSERT INTO "AWGear" VALUES(6,'Leather jacket',2,'(1-armor)');
INSERT INTO "AWGear" VALUES(7,'angel kit',3,'scissors,  rags,  tape,  needles,  clamps,  gloves,  chill  coils,  wipes,  alcohol,  injectable tourniquets  &  bloodslower,  instant  blood  packets  (coffee reddener),  tubes  of  meatmesh,  bonepins  &  site  injectors, biostabs,  chemostabs,  narcostabs  (chillstabs)  in  quantity');
CREATE TABLE "AWStats" (
id integer primary key autoincrement, 
ClassId integer, 
Cool integer,
Hard integer,
Hot integer,
Sharp integer,
Weird integer,

FOREIGN KEY (ClassId) REFERENCES AWClasses(id)
);
INSERT INTO "AWStats" VALUES(1,1,1,0,1,2,-1);
INSERT INTO "AWStats" VALUES(2,1,1,1,0,2,-1);
INSERT INTO "AWStats" VALUES(3,1,-1,1,0,2,1);
INSERT INTO "AWStats" VALUES(4,1,2,0,-1,2,-1);
CREATE TABLE "AWResources" (
id integer primary key autoincrement, 
name text
);
INSERT INTO "AWResources" VALUES(1,'meat');
INSERT INTO "AWResources" VALUES(2,'salt');
INSERT INTO "AWResources" VALUES(3,'grain');
INSERT INTO "AWResources" VALUES(4,'fresh foods');
INSERT INTO "AWResources" VALUES(5,'staple foods');
INSERT INTO "AWResources" VALUES(6,'preserved foods');
INSERT INTO "AWResources" VALUES(7,'drinking water');
INSERT INTO "AWResources" VALUES(8,'hot water');
INSERT INTO "AWResources" VALUES(9,'shelter');
INSERT INTO "AWResources" VALUES(10,'liberty');
INSERT INTO "AWResources" VALUES(11,'leisure');
INSERT INTO "AWResources" VALUES(12,'fuel');
INSERT INTO "AWResources" VALUES(13,'heat');
INSERT INTO "AWResources" VALUES(14,'security');
INSERT INTO "AWResources" VALUES(15,'time');
INSERT INTO "AWResources" VALUES(16,'health');
INSERT INTO "AWResources" VALUES(17,'medical supplies');
INSERT INTO "AWResources" VALUES(18,'information');
INSERT INTO "AWResources" VALUES(19,'status');
INSERT INTO "AWResources" VALUES(20,'specialized goods');
INSERT INTO "AWResources" VALUES(21,'luxury goods');
INSERT INTO "AWResources" VALUES(22,'gasoline');
INSERT INTO "AWResources" VALUES(23,'weaponry');
INSERT INTO "AWResources" VALUES(24,'labor');
INSERT INTO "AWResources" VALUES(25,'skilled labor');
INSERT INTO "AWResources" VALUES(26,'acclaim');
INSERT INTO "AWResources" VALUES(27,'loyalty');
INSERT INTO "AWResources" VALUES(28,'blood kin');
INSERT INTO "AWResources" VALUES(29,'strategic position');
INSERT INTO "AWResources" VALUES(30,'drugs');
INSERT INTO "AWResources" VALUES(31,'work animals');
INSERT INTO "AWResources" VALUES(32,'livestock');
INSERT INTO "AWResources" VALUES(33,'know-how');
INSERT INTO "AWResources" VALUES(34,'walls');
INSERT INTO "AWResources" VALUES(35,'living space');
INSERT INTO "AWResources" VALUES(36,'storage space');
INSERT INTO "AWResources" VALUES(37,'machinery');
INSERT INTO "AWResources" VALUES(38,'connections');
INSERT INTO "AWResources" VALUES(39,'access');
INSERT INTO "AWResources" VALUES(40,'raw materials');
INSERT INTO "AWResources" VALUES(41,'books');
CREATE TABLE "AWThreatTypes" (
id integer primary key autoincrement, 
name text
);
INSERT INTO "AWThreatTypes" VALUES(1,'Warlords');
INSERT INTO "AWThreatTypes" VALUES(2,'Grotesques');
INSERT INTO "AWThreatTypes" VALUES(3,'Landscapes');
INSERT INTO "AWThreatTypes" VALUES(4,'Afflictions');
INSERT INTO "AWThreatTypes" VALUES(5,'Brutes');
CREATE TABLE "AWThreats" (
id integer primary key autoincrement, 
name text,
ThreatId integer, 
description text,

FOREIGN KEY (ThreatId) REFERENCES AWThreatTypes(id)
);
INSERT INTO "AWThreats" VALUES(1,'Slaver',1,NULL);
INSERT INTO "AWThreats" VALUES(2,'Hive queen',1,NULL);
INSERT INTO "AWThreats" VALUES(3,'Prophet',1,NULL);
INSERT INTO "AWThreats" VALUES(4,'Dictator',1,NULL);
INSERT INTO "AWThreats" VALUES(5,'Collector',1,NULL);
INSERT INTO "AWThreats" VALUES(6,'Alpha wolf',1,NULL);
INSERT INTO "AWThreats" VALUES(7,'Cannibal',2,NULL);
INSERT INTO "AWThreats" VALUES(8,'Mutant',2,NULL);
INSERT INTO "AWThreats" VALUES(9,'Pain addict',2,NULL);
INSERT INTO "AWThreats" VALUES(10,'Disease vector',2,NULL);
INSERT INTO "AWThreats" VALUES(11,'Mindfucker',2,NULL);
INSERT INTO "AWThreats" VALUES(12,'Perversion of birth',2,NULL);
INSERT INTO "AWThreats" VALUES(13,'Prison',3,NULL);
INSERT INTO "AWThreats" VALUES(14,'Breeding pit',3,NULL);
INSERT INTO "AWThreats" VALUES(15,'Furnace',3,NULL);
INSERT INTO "AWThreats" VALUES(16,'Mirage',3,NULL);
INSERT INTO "AWThreats" VALUES(17,'Maze',3,NULL);
INSERT INTO "AWThreats" VALUES(18,'Fortress',3,NULL);
INSERT INTO "AWThreats" VALUES(19,'Disease',4,NULL);
INSERT INTO "AWThreats" VALUES(20,'Condition',4,NULL);
INSERT INTO "AWThreats" VALUES(21,'Custom',4,NULL);
INSERT INTO "AWThreats" VALUES(22,'Delusion',4,NULL);
INSERT INTO "AWThreats" VALUES(23,'Sacrifice',4,NULL);
INSERT INTO "AWThreats" VALUES(24,'Barrier',4,NULL);
INSERT INTO "AWThreats" VALUES(25,'Hunting pack',5,NULL);
INSERT INTO "AWThreats" VALUES(26,'Sybarites',5,'a person who is self-indulgent in their fondness for sensuous luxury');
INSERT INTO "AWThreats" VALUES(27,'Enforcers',5,NULL);
INSERT INTO "AWThreats" VALUES(28,'Cult',5,NULL);
INSERT INTO "AWThreats" VALUES(29,'Mob',5,NULL);
INSERT INTO "AWThreats" VALUES(30,'Family',5,NULL);
CREATE TABLE "AWScarcities" (
id integer primary key autoincrement, 
name text
);
INSERT INTO "AWScarcities" VALUES(1,'Hunger');
INSERT INTO "AWScarcities" VALUES(2,'Thirst');
INSERT INTO "AWScarcities" VALUES(3,'Ignorance');
INSERT INTO "AWScarcities" VALUES(4,'Fear');
INSERT INTO "AWScarcities" VALUES(5,'Decay');
INSERT INTO "AWScarcities" VALUES(6,'Despair');
INSERT INTO "AWScarcities" VALUES(7,'Envy');
INSERT INTO "AWScarcities" VALUES(8,'Ambition');
CREATE TABLE "AWCampaign" (
id integer primary key autoincrement, 
description text
);
INSERT INTO "AWCampaign" VALUES(1,'BlindBlue & HATCHET CITY');
CREATE TABLE "AWFronts" (
id integer primary key autoincrement, 
name text,
agenda text, 
threatId integer,
scarcityId integer,
description text,

FOREIGN KEY (threatId) REFERENCES AWThreatTypes(id),
FOREIGN KEY (scarcityId) REFERENCES AWScarcities(id)
);
INSERT INTO "AWFronts" VALUES(1,'Ambergrease','Ambergrease wants to take over the compound',1,7,'You live in a holding called Hatchet City. Hatchet City is at war with this rival warlord named Ambergrease, whose gang fights with a viciousness beyond all reason.');
CREATE TABLE "AWCampaignFronts" (
id integer primary key autoincrement, 
campaignId integer,
countdown integer,
description text,
frontId INTEGER,

FOREIGN KEY (campaignId) REFERENCES AWCampaign(id)
FOREIGN KEY (frontId) REFERENCES AWFronts(id)
);
INSERT INTO "AWCampaignFronts" VALUES(1,1,12,'This is an Apocalypse World 1-shot or con scenario. I call it Blind-blue & Hatchet City but whatever. It''s for MC + 3-5 players; it''s probably best with all 5',1);
CREATE TABLE "AWCharacters" (
id integer primary key autoincrement, 
name text,
basicLook text, 
experience integer
);
INSERT INTO "AWCharacters" VALUES(1,'Angela','Kind Face',0);
INSERT INTO "AWCharacters" VALUES(2,'EffJay','brutal',0);
INSERT INTO "AWCharacters" VALUES(3,'October','muscular',0);
CREATE TABLE "AWCampaignChars" (
id integer primary key autoincrement,
Charid integer,
CampaignLook text,
ClassId integer, 
CampaignId integer, 

FOREIGN KEY (Charid) REFERENCES AWCharacters(id),
FOREIGN KEY (Campaignid) REFERENCES AWCampaign(id),
FOREIGN KEY (Classid) REFERENCES AWClasses(id)
);
INSERT INTO "AWCampaignChars" VALUES(1,1,'Compact body',1,1);
INSERT INTO "AWCampaignChars" VALUES(2,2,'rugged',6,1);
INSERT INTO "AWCampaignChars" VALUES(3,3,'rough',2,1);
CREATE TABLE "AWCharacterHxs" (
id integer primary key autoincrement,
CharId integer,
OtherCharId integer,
Hx integer, 
CampaignId integer, 

FOREIGN KEY (Charid) REFERENCES AWCharacters(id),
FOREIGN KEY (OtherCharId) REFERENCES AWCharacters(id),
FOREIGN KEY (Campaignid) REFERENCES AWCampaign(id)
);
CREATE TABLE "AWCharacterGears" (
id integer primary key autoincrement,
Charid integer,
GearId integer,
CampaignId integer, 

FOREIGN KEY (Charid) REFERENCES AWCharacters(id),
FOREIGN KEY (GearId) REFERENCES AWGears(id),
FOREIGN KEY (Campaignid) REFERENCES AWCampaign(id)
);
INSERT INTO "AWCharacterGears" VALUES(1,1,2,1);
INSERT INTO "AWCharacterGears" VALUES(2,1,6,1);
INSERT INTO "AWCharacterGears" VALUES(3,1,7,1);
CREATE TABLE "AWCharacterMoves" (
id integer primary key autoincrement,
Charid integer,
MoveId integer,
CampaignId integer, 

FOREIGN KEY (Charid) REFERENCES AWCharacters(id),
FOREIGN KEY (MoveId) REFERENCES AWMoves(id),
FOREIGN KEY (Campaignid) REFERENCES AWCampaign(id)
);
INSERT INTO "AWCharacterMoves" VALUES(1,1,40,1);
INSERT INTO "AWCharacterMoves" VALUES(2,1,34,1);
INSERT INTO "AWCharacterMoves" VALUES(3,2,42,1);
INSERT INTO "AWCharacterMoves" VALUES(4,2,51,1);
INSERT INTO "AWCharacterMoves" VALUES(5,3,14,1);
INSERT INTO "AWCharacterMoves" VALUES(6,3,48,1);
DELETE FROM sqlite_sequence;
INSERT INTO "sqlite_sequence" VALUES('AWClasses',99);
INSERT INTO "sqlite_sequence" VALUES('AWMoves',78);
INSERT INTO "sqlite_sequence" VALUES('AWCharNames',53);
INSERT INTO "sqlite_sequence" VALUES('AWKeys',1);
INSERT INTO "sqlite_sequence" VALUES('AWGearTypes',3);
INSERT INTO "sqlite_sequence" VALUES('AWGear',7);
INSERT INTO "sqlite_sequence" VALUES('AWStats',4);
INSERT INTO "sqlite_sequence" VALUES('AWResources',41);
INSERT INTO "sqlite_sequence" VALUES('AWThreatTypes',5);
INSERT INTO "sqlite_sequence" VALUES('AWThreats',30);
INSERT INTO "sqlite_sequence" VALUES('AWScarcities',8);
INSERT INTO "sqlite_sequence" VALUES('AWCampaign',1);
INSERT INTO "sqlite_sequence" VALUES('AWCharacters',3);
INSERT INTO "sqlite_sequence" VALUES('AWCampaignChars',3);
INSERT INTO "sqlite_sequence" VALUES('AWCharacterGears',3);
INSERT INTO "sqlite_sequence" VALUES('AWCharacterMoves',6);
INSERT INTO "sqlite_sequence" VALUES('AWCampaignFronts',1);
INSERT INTO "sqlite_sequence" VALUES('AWFronts',1);
CREATE UNIQUE INDEX AWClasses_id_IDX ON AWClasses (id);
CREATE INDEX AWMoves_id_IDX ON AWMoves (id);
CREATE INDEX AWMoves_classId_IDX ON AWMoves (classId);
CREATE VIEW viewAWMoves as select AWMoves.id, AWMoves.name, AWClasses.name 
from AWMoves 
join AWCLasses 
on AWMoves.classId=AWClasses.id;
CREATE VIEW viewAWClasses as select * from AWCLasses 
where id > 0;
CREATE VIEW viewAWThreats as select AWThreats.id, AWThreats.name, AWThreatTypes.name as type from AWThreats
join AWThreatTypes
on AWThreats.ThreatId=AWThreatTypes.id;
CREATE VIEW viewAWCharacterMoves as select AWCharacterMoves.id, AWCharacters.name, AWMoves.name, AWMoves.description from AWCharacterMoves
join AWMoves
on AWCharacterMoves.MoveId=AWMoves.id
join AWCharacters
on AWCharacterMoves.Charid=AWCharacters.id;
CREATE VIEW viewAWCharacter as select AWCharacters.id, AWCharacters.name, AWCharacters.basicLook, AWCampaignChars.CampaignLook, AWClasses.name as "class" 
from AWCharacters
join AWCampaignChars
on AWCampaignChars.id=AWCharacters.id
join AWClasses
on AWCampaignChars.ClassId=AWCLasses.id;
CREATE VIEW viewAWCharacterGears as select AWCharacterGears.id, AWCharacters.name, AWGear.name from AWCharacterGears
join AWGear
on AWCharacterGears.GearId=AWGear.id
join AWCharacters
on AWCharacterGears.Charid=AWCharacters.id;
COMMIT;
