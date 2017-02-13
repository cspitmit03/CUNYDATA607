-- create video table for assignment--
-- #1 --
drop table Videos;

CREATE TABLE Videos(
    VideoID integer not null, -- ID for video
    title  text,              -- title for the video
    runningtime   real not null,   -- movie length (minutes), converted to decimal 3:30 = 210
    primary key(VideoID)
);

insert into Videos values(1, 'Hidden Figures', 2*60+7);
insert into Videos values(2, 'Passengers', 1*60+56);
insert into Videos values(3, 'Split (2017)', 1*60+57);
insert into Videos values(4, 'Moonlight', 1*60+50);
insert into Videos values(5, 'La La Land', 2*60+8);

select * from Videos


-- create reviewers table for assignemnt --
-- #2 --
drop table Reviews;

CREATE TABLE Reviews(
    ReviewerID integer not null, 	-- ID for Reviewer
    ReviewerName text,            	 -- Name of Reviewer
    rating  integer,  				 -- rating for video
    review text,                 	 -- review of the video
    VideoID integer not null, 		 -- ID of the Video being reviewed
    primary key(ReviewerID)
);

insert into Reviews values(1, 'Cesar', 5, 'I laughed and I cried.  The triump of the human spirit is clear in this film.', 1);
insert into Reviews values(2, 'George', 4, 'A bit long for the storyline, great cast', 2);
insert into Reviews values(3, 'Alex', 4, 'Creepy but good, that plot twist at the end!', 3);
insert into Reviews values(4, 'Luciano', 5, 'This movie should win an oscar!', 4);
insert into Reviews values(5, 'Luciano', 1, 'I do not get this movie and I was born in LA!', 5);

select * from Reviews

-- join the tabels --
-- #3 --

select * 
from Videos a
left join Reviews b
on a.VideoID = b.VideoID


SET PASSWORD FOR 'root'@'localhost' = PASSWORD('CUNYDATA');