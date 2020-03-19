-- create the database schema
drop database if exists bmdb;
create database bmdb;
use bmdb;

-- create movie table 
create table movie 
(ID				int					primary key auto_increment,
Title			varchar(100)		not null,
Year			int					not null,
Rating			varchar(5)			not null,
Director		varchar(50)			not null
);

-- create actor table
create table actor 
(ID				int					primary key auto_increment,
FirstName		varchar(25)			not null,
LastName		varchar(25)			not null,
Gender			varchar(6)			not null,
Birthdate		date				not null
);

-- create credit table
create table credit 
(ID				int					primary key auto_increment,
actorID			int					not null,
movieID			int					not null,
Role			varchar(30),			
FOREIGN KEY(actorID) REFERENCES actor(ID),
FOREIGN KEY(movieID) REFERENCES movie(ID)
);

-- add data to movie  table
Insert into Movie (ID, Title, Year, Rating, Director)
values (1, 'The Irishman', 2019, 'R', 'Martin Scorsese');
Insert into Movie (ID, Title, Year, Rating, Director)
values (2, 'Joker', 2019, 'R', 'Todd Phillips');


-- add data to actor table
Insert into actor (ID, FirstName, LastName, gender, Birthdate)
values (1, 'Robert', 'De Niro', 'male', '1943-08-17');
Insert into actor (ID, FirstName, LastName, gender, Birthdate)
values (2, 'Al', 'Pacino', 'male', '1940-04-25');
Insert into actor (ID, FirstName, LastName, gender, Birthdate)
values (3, 'Joaquin', 'Phoenix', 'male', '1974-10-28');


-- add data to credit table
Insert into credit (ID, actorID, movieID, role)
values (1, 1,1, 'Frank Sheeran');
Insert into credit (ID, actorID, movieID, role)
values (2, 2,1, 'Jimmy Hoffa');
Insert into credit (ID, actorID, movieID, role)
values (3,3,2, 'Arthur Fleck (Joker)');
Insert into credit (ID, actorID, movieID, role)
values (4, 1,2, 'Murray Franklin (Host)');
