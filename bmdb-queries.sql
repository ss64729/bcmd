select * from movie;
select * from actor;
select * from credit;

select title, firstname, lastname, role from 
movie a, actor b, credit c where
a.movieid = c.movieid and
b.actorid = c.actorid;

select title, firstname, lastname, role from movie a
join credit c on a.movieid = c.movieid
join actor b on c.actorid = b.actorid;

select title, concat(firstname," ", lastname) as actor, role from movie a
join credit c on a.movieid = c.movieid
join actor b on c.actorid = b.actorid;


select * from movie where title like "%Hidden%";

select firstname, lastname from actor where
actorid in (select actorid from credit 
where movieid = 5);

select firstname, lastname, dob from actor where
dob < '1973-08-28' order by 3 desc;

select firstname, lastname from actor a
join credit b on a.actorid = b.actorid
where movieid = '4';

select count(*) , lastname, firstname from credit a, actor b 
 where a.actorid = '23' and a.actorid = b.actorid ;
 
 select firstname, lastname, title from actor a, credit b, movie c
 where a.actorid = b.actorid and b.movieid = c.movieid;
 
 select firstname, lastname, role, title from actor a
 left join credit b on b.actorid = a.actorid
join movie c on b.movieid = c.movieid;