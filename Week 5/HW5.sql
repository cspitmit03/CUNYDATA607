-- create video table for assignment--
-- #1 --

USE CUNY607

drop table HW5;

CREATE TABLE HW5(
	ID integer not null,        -- key
    Airline  text,              -- Airline
    Performance text,           -- on time or delayed
    LosAngeles integer, -- values for Los Angeles
    Phoenix integer, -- values for Phoenix
	SanDiego integer, -- values for SanDiego
	SanFrancisco integer, -- values for SanFrancisco
	Seattle integer, -- values for Seattle
    primary key(ID)
);

insert into HW5 values(1,'ALASKA','on time',497,221,212,503,1841);
insert into HW5 values(2,'','delayed',62,12,20,102,305);
insert into HW5 values(3,'','',null,null,null,null,null);
insert into HW5 values(4,'AM WEST', 'on time',694,4840,383,320,201);
insert into HW5 values(5,'', 'delayed',117,415,65,129,61);

select * from HW5