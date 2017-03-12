-- create table for Project 2 Data Set 2.
-- #1 --

USE CUNY607

drop table Project2DS2;

CREATE TABLE Project2DS2(
	ID integer not null,        -- key
    CensusRegion  text,              -- Region
    Deaths integer, -- Deaths
    Population integer, -- Population
	CrudeRateper100000 float, -- Crude Rates
    primary key(ID)
);

insert into Project2DS2 values(1,'Census Region 1: Northeast (CENS-R1)',461712,54653362,844.8);
insert into Project2DS2 values(2,'Census Region 2: Midwest (CENS-R2)',564665,66293689,851.8);
insert into Project2DS2 values(3,'Census Region 3: South (CENS-R3)',924360,110688742,835.1);
insert into Project2DS2 values(4,'Census Region 4: West (CENS-R4)',472975,69595414,679.6);
insert into Project2DS2 values(5,'Total',2423712,301231207,840.6);

select * from Project2DS2