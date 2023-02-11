Create Database [JOINS exercises on movie Database]

Use [JOINS exercises on movie Database]

-- Exercise 1

Create Table movie (
mov_id int,
mov_title nvarchar(30),
mov_year int,
mov_time int,
mov_lang varchar(50),
mov_dt_rel varchar(50),
mov_rel_country varchar(10)
)

Insert into movie Values (901,'Vertigo',1958,128,'English','1958-08-24','UK'),(902,'The Innocents',1961,100,'Sweden','1962-02-19','SW'),(903,'Lawrence of Arabia',1962,216,'English','1962-12-11','UK'),(904,'The Deer Hunter',1978,183,'English','1979-03-08','UK'),(905,'Amadeus',1984,160,'English','1985-01-07','UK'),(906,'Blade Runner',1982,117,'English','1982-09-09','UK'),(907,'Eyes Wide Shut',1999,159,'English',null,'UK'),(908,'The Usual Suspects',1995,106,'English','1995-08-25','UK'),(909,'Chinatown',1974,130,'English','1974-08-09','UK'),(910,'Boogie Nights',1997,155,'English','1998-02-16','UK'),(911,'Annie Hall',1977,93,'English','1977-04-20','USA'),(912,'Princess Mononoke',1957,134,'Japanese','2001-10-19','JP'),(913,'The Shawshank Redemption',1994,142,'English','1995-02-17','UK'),(914,'American Beauty',1999,122,'English',null,'UK'),(915,'Titanic',1997,194,'English','1998-01-23','UK'),(916,'Good Will Hunting',1997,126,'English','1998-06-03','UK'),(917,'Deliverance',1972,109,'English','1982-10-05','UK'),(918,'Trainspotting',1996,94,'English','1996-02-23','UK'),(919,'The Prestige',2006,130,'English','2006-11-10','UK'),(920,'Donnie Darko',2001,113,'English',null,'UK'),(921,'Slumdog Millionaire',2008,120,'English','2009-01-09','UK'),(922,'Aliens',1986,137,'English','1986-08-29','UK'),(923,'Beyond the Sea',2004,118,'English','2004-11-26','UK'),(924,'Avatar',2009,162,'English','2009-12-17','UK'),(926,'Seven Samurai',1954,207,'Japanese','1954-04-26','JP'),(927,'Spirited Away',2001,125,'Japanese','2003-09-12','JP'),(928,'Back to the Future',1985,116,'English','1985-12-04','UK'),(925,'Braveheart',1995,178,'English','1995-09-08','UK')

Create Table Reviewer(
rev_id int,
rev_name varchar(50),
)

Insert into Reviewer Values (9001, 'Righty Sock'),(9002, 'Jack Malvern'),(9003, 'Flagrant Baronessa'),(9004, 'Alec Shaw'),(9005, null),(9006, 'Victor Woeltjen'),(9007, 'Simon Wright'),(9008, 'Neal Wruck'),(9009, 'Paul Monks'),(9010, 'Mike Salvati'),(9011, null),(9012, 'Wesley S. Walker'),(9013, 'Sasha Goldshtein'),(9014, 'Josh Cates'),(9015, 'Krug Stillo'),(9016, 'Scott LeBrun'),(9017, 'Hannah Steele'),(9018, 'Vincent Cadena'),(9019, 'Brandt Sponseller'),(9020, 'Richard Adams')

Create Table Rating(
mov_id int,
rev_id int,
rev_stars float,
num_o_ratings int
)

Insert into Rating Values (901, 9001, 8.40,263575),(902, 9002, 7.90,20207),(903, 9003, 8.30,202778),(906, 9005, 8.20,484746),(924, 9006, 7.30,null),(908, 9007, 8.60,779489),(909, 9008,null,227235),(910, 9009, 3.00,195961),(911, 9010, 8.10,203875),(912, 9011, 8.40,null),(914, 9013, 7.00,862618),(915, 9001, 7.70,830095),(916, 9014, 4.00,642132),(925, 9015, 7.70,81328),(918, 9016, null,580301),(920, 9017, 8.10,609451),(921, 9018, 8.00,667758),(922, 9019, 8.40,511613),(923, 9020,6.70,13091)

Create Table Actor(
act_id int,
act_fname varchar(50),
act_lname varchar(50),
act_gender char(1)
)

Insert into Actor Values (101, 'James', 'Stewart', 'M'), (102, 'Deborah', 'Kerr', 'F'), (103,'Peter','OToole','M'),(104,'Robert','De Niro','M'),(105,'F. Murray','Abraham','M'),(106,'Harrison','Ford','M'), (107, 'Nicole','Kidman','F'),(108,'Stephen','Baldwin','M'),(109,'Jack','Nicholson','M'),(110,'Mark','Wahlberg','M'),(111,'Woody','Allen','M'),(112,'Claire','Danes','F'),(113,'Tim','Robbins','M'),(114,'Kevin','Spacey','M'),(115,'Kate','Winslet','F'),(116,'Robin','Williams','M'),(117,'Jon','Voight','M'),(118,'Ewan','McGregor','M'),(119,'Christian','Bale','M'),(120,'Maggie','Gyllenhaal','F'),(121,'Dev','Patel','M'),(122,'Sigourney','Weaver','F'),(123,'David','Aston','M'),(124,'Ali','Astin','F')

Create Table Movie_cast(
act_id int,
mov_id int,
role text,
)

Insert into Movie_cast Values (101,901,'John Scottie Ferguson'),(102,902,'Miss Giddens'),(103,903,'T.E. Lawrence'),(104,904,'Michael'),(105,905,'Antonio Salieri'),(106,906,'Rick Deckard'),(107,907,'Alice Harford'),(108,908,'McManus'),(110,910,'Eddie Adams'),(111,911, 'Alvy Singer'),(112,912,'San'),(113,913,'Andy Dufresne'),(114, 914,'Lester Burnham'),(115,915,'Rose DeWitt Bukater'),(116,916,'Sean Maguire'),(117,917,'Ed'),(118,918,'Renton'),(120,920,'Elizabeth Darko'),(121,921,'Older Jamal'),(122,922,'Ripley'),(114,923,'Bobby Darin'),(109,909,'J.J. Gittes'),(119,919,'Alfred Borden')

Create Table Director(
dir_id int,
dir_fname varchar(50),
dir_lname varchar(50),
)

Insert into Director Values (201,'Alfred','Hitchcock'),(202,'Jack','Clayton'),(203,'David','Lean'),(204,'Michael','Cimino'),(205,'Milos','Forman'),(206,'Ridley','Scott'),(207,'Stanley','Kubrick'),(208,'Bryan','Singer'),(209,'Roman','Polanski'),(210,'Paul','Thomas Anderson'),(211,'Woody','Allen'),(212,'Hayao','Miyazaki'),(213,'Frank','Darabont'),(214,'Sam','Mendes'),(215,'James','Cameron'),(216,'Gus','Van Sant'),(217,'John','Boorman'),(218,'Danny','Boyle'),(219,'Christopher','Nolan'),(220,'Richard','Kelly'),(221,'Kevin','Spacey'),(222,'Andrei','Tarkovsky'),(223,'Peter','Jackson')

Create Table Movie_Direction(
dir_id int,
mov_id int
)

Insert into Movie_Direction Values (201,901),(202,902),(203,903),(204,904),(205,905),(206,906),(207,907),(208,908),(209,909),(210,910),(211,911),(212,912),(213,913),(214,914),(215,915),(216,916),(217,917),(218,918),(219,919),(220,920),(218,921),(215,922),(221,923)

Select R1.rev_name from Reviewer R1
Inner Join Rating R2
on R1.rev_id=R2.rev_id Where R2.rev_stars is null

-- Exercise 2

Select a.act_fname, a.act_lname, mc.role from Actor a
inner join Movie_cast mc
on mc.act_id = a.act_id
Left join movie m
on m.mov_id = mc.mov_id Where mov_title like 'Annie Hall'

-- Exercise 3

Select d.dir_fname, d.dir_lname,m.mov_title from Director d 
Left join Movie_Direction md
on d.dir_id = md.dir_id
Inner join Movie_cast mc
on mc.mov_id = md.mov_id
join movie m
on m.mov_id = mc.mov_id Where mov_title like 'Eyes Wide Shut'

-- Exercise 4

Select d.dir_fname, d.dir_lname,m.mov_title from Director as d
Right Join Movie_Direction md
on md.dir_id=d.dir_id
Left Join movie as m
on md.mov_id=m.mov_id
Inner Join Movie_cast as mc
on md.mov_id=mc.mov_id Where mc.role like 'Sean Maguire'

-- Exercise 5

Select a.act_fname, a.act_lname,m1.mov_title,m1.mov_year from Actor as a
Left Join Movie_cast as mc
on a.act_id = mc.act_id
Left Join movie as m1
on mc.mov_id=m1.mov_id 
Where m1.mov_title not in (Select mov_title from movie as m2 Where m2.mov_year>1990 and m2.mov_year<2000)

-- Exercise 6

Create Table Genres(
gen_id int,
gen_title varchar(70)
)

Insert Into Genres Values (1001,'Action'),(1002,'Adventure'),(1003,'Animation'),(1004,'Biography'),(1005,'Comedy'),(1006,'Crime'),(1007,'Drama'),(1008,'Horror'),(1009,'Music'),(1010,'Mystery'),(1011,'Romance'),(1012,'Thriller'),(1013,'War')

Create Table Movie_Genres(
mov_id int,
gen_id int
)

Insert Into Movie_Genres Values (922,1001),(917,1002),(903,1002),(912,1003),(911,1005),(908,1006),(913,1006),(926,1007),(928,1007),(918,1007),(921,1007),(902,1008),(923,1009),(907,1010),(927,1010),(901,1010),(914,1011),(906,1012),(904,1013)

Select d.dir_fname,d.dir_lname,g.gen_title,count(g.gen_title) from Director as d
Left Join Movie_Direction as md
on d.dir_id=md.dir_id
Inner Join Movie_Genres as mg
on md.mov_id=mg.mov_id
Left Join Genres as g
on mg.gen_id=g.gen_id 
Group by d.dir_fname,d.dir_lname,g.gen_title Order by d.dir_fname,d.dir_lname 

-- Exercise 7

Select m.mov_title,m.mov_year,g.gen_title from movie as m
Left Join Movie_Genres as mg
on m.mov_id=mg.mov_id
Right Join Genres as g
on mg.gen_id=g.gen_id

-- Exercise 8

Select m.mov_title, m.mov_year,g.gen_title,d.dir_fname,dir_lname from Director as d
Left Join Movie_Direction as md
on d.dir_id=md.dir_id
Right Join movie as m
on md.mov_id=m.mov_id
Inner Join Movie_Genres as mg
on m.mov_id=mg.mov_id
Left Join Genres as g
on mg.gen_id=g.gen_id

-- Exercise 9

Select m.mov_title,m.mov_year,m.mov_time,m.mov_dt_rel,d.dir_fname,d.dir_lname from Director as d
Left Join Movie_Direction as md
on d.dir_id=md.dir_id
Right Join movie as m
on md.mov_id=m.mov_id Where m.mov_dt_rel < '1989-01-01'
Order by m.mov_dt_rel desc

-- Exercise 10

Select gen_title,avg(mov_time) as AverageDurationOfFilm,count(gen_title)as TheNumberOFGenres from Genres as g
Left Join Movie_Genres as mg
on mg.gen_id=g.gen_id
Right Join movie as m
on m.mov_id=mg.mov_id Where gen_title is not null Group by gen_title

-- Exercise 11

Select m1.mov_title, m1.mov_year, d.dir_fname,d.dir_lname,a.act_fname,a.act_lname,mc.role from Actor as a
Left Join Movie_cast as mc
on a.act_id=mc.act_id
Right Join movie as m1
on m1.mov_id=mc.mov_id
Left Join Movie_Direction as md
on md.mov_id=m1.mov_id
Right Join Director as d
on d.dir_id=md.dir_id Where m1.mov_time in (Select min(mov_time) from movie as m2)

-- Exercise 12

Select distinct m.mov_year from movie as m
Right Join Rating AS ra
on m.mov_id=ra.mov_id Where ra.rev_stars = 3 or rev_stars = 4

-- Exercise 13

Select rev_name,mov_title,rev_stars from Reviewer
Inner Join rating
on Reviewer.rev_id=Rating.rev_id
Inner Join movie
on movie.mov_id=Rating.mov_id Where rev_name is not null group by rev_name,mov_title,rev_stars order by rev_name,mov_title,rev_stars

-- Exercise 14

Select m.mov_title, max(ra.rev_stars) as RatingMaxValues from movie as m
Left Join Rating as ra
on m.mov_id=ra.mov_id Where ra.rev_stars is not null group by m.mov_title
Having max(ra.rev_stars) > 0
Order by m.mov_title

-- Exercise 15

Select m.mov_title,d.dir_fname, d.dir_lname,ra.rev_stars from Director as d
Left Join Movie_Direction as md
on d.dir_id=md.dir_id
Right Join movie as m
on m.mov_id=md.mov_id
Left Join Rating as ra
on ra.mov_id=m.mov_id Where ra.rev_stars is not null

-- Exercise 16
-- in question
Select mov_title,act_fname + act_lname as Full_Name,role from movie
Left Join Movie_cast 
on movie.mov_id=Movie_cast.mov_id
Left Join Actor
on Actor.act_id=Movie_cast.act_id Where Actor.act_id in (Select a2.act_id from Actor as a2 Group by a2.act_id Having count(*)>=1)

-- Exercise 17

Select dir_fname + dir_lname as FullNameofCEO, act_fname + act_lname as FullNameofActorOrActress,Role from Actor
Left Join Movie_cast 
on Movie_cast.act_id=Actor.act_id
Left Join movie
on Movie_cast.mov_id=movie.mov_id
Left Join Movie_Direction
on Movie_Direction.mov_id=movie.mov_id
Inner Join Director 
on Director.dir_id=Movie_Direction.dir_id Where Actor.act_fname like 'Claire' and Actor.act_lname like 'Danes'

-- Exercise 18

Select act_fname + act_lname as FullNameofActorOrActress, mov_title,role from Actor
Left Join Movie_cast 
on Movie_cast.act_id=Actor.act_id
Left Join movie
on Movie_cast.mov_id=movie.mov_id
Left Join Movie_Direction
on Movie_Direction.mov_id=movie.mov_id
Inner Join Director 
on Director.dir_id=Movie_Direction.dir_id Where act_fname=dir_fname and act_lname=dir_lname

-- Exercise 19

Select act_fname + act_lname as FullNameofActorOrActress from Actor 
Left Join Movie_cast 
on Actor.act_id=Movie_cast.act_id
Left Join movie
on movie.mov_id=Movie_cast.mov_id Where mov_title like 'Chinatown' Group by act_fname,act_lname 

-- Exercise 20

Select mov_title from Actor 
Left Join Movie_cast 
on Actor.act_id=Movie_cast.act_id
Left Join movie
on movie.mov_id=Movie_cast.mov_id Where act_fname like 'Harrison' and act_lname like 'Ford'

-- Exercise 21

Select mov_title,mov_year,rev_stars,mov_rel_country from movie
Left Join Rating 
on movie.mov_id=Rating.mov_id Where rev_stars in (Select max(rev_stars) from Rating)

-- Exercise 22
-- in questtion
Select mov_title, mov_year,rev_stars from movie 
Left Join Rating
on movie.mov_id=Rating.mov_id
Left Join Movie_Genres
on Movie_Genres.mov_id=Rating.mov_id
Right Join Genres
on Genres.gen_id=Movie_Genres.gen_id Where rev_stars = (Select max(rev_stars) from Rating ) and gen_title like 'Mystery'

-- Exercise 23

SELECT mov_year,gen_title,count(gen_title), avg(rev_stars) FROM movie 
Left JOIN movie_genres 
on movie.mov_id=Movie_Genres.mov_id
Left JOIN genres
on Genres.gen_id=Movie_Genres.gen_id
Inner JOIN rating
on Rating.mov_id = Movie_Genres.mov_id
WHERE gen_title like 'Mystery' 
GROUP BY mov_year,gen_title

-- Exercise 24

Select mov_title, act_fname + act_lname as FullNameofActorOrActress,mov_year,role,gen_title,dir_fname + dir_lname as FullNameofCEO,mov_dt_rel,rev_stars from movie
Left Join Movie_cast 
on Movie_cast.mov_id=movie.mov_id
Inner Join Actor
on Actor.act_id=Movie_cast.act_id
Left Join Movie_Genres
on Movie_Genres.mov_id = Movie_cast.mov_id
Right Join Genres
on Genres.gen_id=Movie_Genres.gen_id
Left Join Movie_Direction 
on Movie_Direction.mov_id = Movie_Genres.mov_id
Inner Join Director
on Director.dir_id=Movie_Direction.dir_id
Left Join Rating
on Movie_Direction.mov_id=Rating.mov_id
Where act_gender like 'F' and mov_dt_rel is not null and rev_stars is not null