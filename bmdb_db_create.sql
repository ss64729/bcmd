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
  ("Forrest Gump",'PG-13','1994','Zemeckis'),
  ("50 First Dates",'PG-13','2004','Segal'),
  ("The Goonies",'PG','1985','Donner'),
  ("National Lampoon's Christmas Vacation",'PG-13','1989','Chechik'),
  ("Talladega Nights: The Ballad of Ricky Bobby",'Pg-13','2006','McKay'),
  ("Daddy's Home",'PG-13','2015','Anders'),
  ("Daddy's Home 2",'PG-13','2017','Anders'),
  ("Dumb and Dumber",'PG-13','1994','Farrelly');
  
  
  
create table actor (
	actorid 		int 			not null primary key auto_increment,
	firstname 		varchar(25) 	not null,
	lastname		varchar(25) 	not null,
	gender			varchar(6) 		not null,
	dob     		date			not null ,
    constraint unq_actor unique (firstname, lastname, dob)
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
    ('Lea','Thompson','Female','1961-05-31'),
    ('Drew','Barrymore','Female','1975-02-22'),
    ('Rob', 'Snider','Male','1963-10-31'),
    ('Sean','Astin','Male','1971-2-25'),
    ('Chevy','Chase','Male','1943-10-8'),
    ('Randy','Quaid','Male','1950-10-1'),
    ('Will','Ferrel','Male','1967-7-16'),
    ('Mark','Wahlberg','Male','1971-6-5'),
    ('Jim','Carrey','Male','1962-1-17'),
    ('Jeff','Daniels','Male','1955-2-19');
    
    
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
6- 50 first
7-goonies
8-christmas vacation
9-Ricky bobby
10- daddy home
11-daddy home 2
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
(1, 17, 'Lorraine'),
(6,18,'Lucy'),
(6,19,'Ula'),
(6,20,'Doug'),
(7,20,'Mikey'),
(8,21,'Clark'),
(8,22,'Cousin Eddie'),
(9,23,'Ricky Bobby'),
(10,23,'Brad'),
(10,24,'Dusty'),
(11,23,'Brad'),
(11,24,'Dusty');





/*
CREATE USER bmdb_user@localhost IDENTIFIED BY 'sesame';
GRANT SELECT, INSERT, DELETE, UPDATE ON sqlbootcamp_bmdb.* TO bmdb_user@localhost;

*/

