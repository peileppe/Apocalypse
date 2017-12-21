/*
CAMPAIGN
SCARCITY
FRONTS

Hunger
Thirst
Ignorance
Fear
Decay
Despair
Envy
Ambition

*/

CREATE TABLE IF NOT EXISTS "AWScarcities" (
id integer primary key autoincrement, 
name text
);

INSERT INTO AWScarcities (name ) values('Hunger');
INSERT INTO AWScarcities (name ) values('Thirst');
INSERT INTO AWScarcities (name ) values('Ignorance');
INSERT INTO AWScarcities (name ) values('Fear');
INSERT INTO AWScarcities (name ) values('Decay');
INSERT INTO AWScarcities (name ) values('Despair');
INSERT INTO AWScarcities (name ) values('Envy');
INSERT INTO AWScarcities (name ) values('Ambition');

CREATE TABLE IF NOT EXISTS "AWFronts" (
id integer primary key autoincrement, 
name text,
agenda text, 
threatId integer,
scarcityId integer,
description text,

FOREIGN KEY (threatId) REFERENCES AWThreatTypes(id),
FOREIGN KEY (scarcityId) REFERENCES AWScarcities(id)
);

INSERT INTO AWFronts (name, agenda, ThreatId, scarcityId, description, countdown ) values('Front 1 - ','',);

CREATE TABLE IF NOT EXISTS "AWCampaign" (
id integer primary key autoincrement, 
description text
); 

INSERT INTO AWCampaign (description) values ('BlindBlue & HATCHET CITY');

CREATE TABLE IF NOT EXISTS "AWCampaignFronts" (
id integer primary key autoincrement, 
campaignId integer,
countdown integer,
description text,
frontId INTEGER,

FOREIGN KEY (campaignId) REFERENCES AWCampaign(id)
FOREIGN KEY (frontId) REFERENCES AWFronts(id)
); 

