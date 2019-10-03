drop database if exists sqlbootcamp_bmdb;
create database sqlbootcamp_bmdb;
use sqlbootcamp_bmdb;

create table movie (
	movieid 		int 			not null primary key auto_increment,
	title			varchar(100) 	not null,
	rating			varchar(5) 		not null,
	year 			int  	 		not null,
	director 		varchar(50)		not null
	);
  
  insert into movie (title, rating, year, director) values
  ("Back to the future",'PG','1985', 'Zemeckis'),
  ("The Waterboy", "PG-13",'1998','Coraci'),
  ("Hidden Figures","PG",'2016','Melfi'),
  ("The Shawshank Redemption",'R', '1994','Darabont'),
  ("Forrest Gump",'PG-13','1994','Zemeckis');
  
create table actor (
	actorid 		int 			not null primary key auto_increment,
	firstname 		varchar(25) 	not null,
	lastname		varchar(25) 	not null,
	gender			varchar(6) 		not null,
	dob     		date			not null 
	);
    Insert into actor(firstname, lastname, gender, dob) VALUES
    ('Tom','Hanks','Male','1956-07-09'),
    ("Sally",'Field','Female','1946-11-6'),
    ("Robin", "Wright",'Female','1966-4-8'),
    ("Mykelti",'Williamson','Male','1957-3-4'),
    ("Gary",'Senise','Male','1955-3-17'),
    ("Tim","Robbins","Male",'1958-10-16'),
    ('Morgan','Freeman','Male','1937-6-1'),
    ('Taraji','Henson','Female','1970-9-11'),
    ('Octavia','Spencer','Female','1972-5-25'),
    ('Janelle','Monae', 'Female','1985-12-1'),
    ('Kevin','Costner','Male','1955-1-18'),
    ('Adam','Sandler','Male','1966-9-9'),
    ('Kathy','Bates','Female','1948-6-28'),
    ('Henry','Winkler','Male','1945-10-30'),
    ('Michael','Fox','Male','1961-6-9'),
    ('Christopher','Lloyd','Male','1938-10-22'),
    ('Lea','Thompson','Female','1961-05-31');
    
    
create table credit (
	creditid 		int 			not null primary key auto_increment,
	movieid			int 			not null,
	actorid 		int			 	not null,
	role			varchar(25) 	not null
	);
ALTER TABLE credit
ADD FOREIGN KEY (movieid) REFERENCES movie(movieid),
add foreign key (actorid) references actor(actorid);
/*
1-btf
2-waterboy
3-hidden
4-shawshank
5-forrest
*/

Insert into credit ( movieid, actorid, role)
values
(5,1,'Forrest'),
(5,2,'Mama'),
(5,3,'Jenny'),
(5,4,'Bubba'),
(5,5,'Lt. Dan'),
(4,6,'Andy'),
(4,7,'Red'),
(3,8,'Catherine'),
(3,9,'Dorothy'),
(3,10,'Mary'),
(3,11,'Al'),
(2,12, 'Bobby'),
(2,13, 'Mama'),
(2,14,'Coach'),
(1,15, 'Marty'),
(1,16,'Doc'),
(1, 17, 'Lorraine');





