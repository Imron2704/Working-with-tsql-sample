Create Database [SUBQUERIES exercises on movie Database]

Use [SUBQUERIES exercises on movie Database]

-- Exercise 1

Create Table movie (
mov_id int,
mov_title nvarchar(30),
mov_year int,
mov_time int,
mov_lang text,
mov_dt_rel varchar(50),
mov_rel_country nvarchar(10)
)

Insert into movie Values (901,'Vertigo',1958,128,'English','1958-08-24','UK'),(902,'The Innocents',1961,100,'Sweden','1962-02-19','SW'),(903,'Lawrence of Arabia',1962,216,'English','1962-12-11','UK'),(904,'The Deer Hunter',1978,183,'English','1979-03-08','UK'),(905,'Amadeus',1984,160,'English','1985-01-07','UK'),(906,'Blade Runner',1982,117,'English','1982-09-09','UK'),(907,'Eyes Wide Shut',1999,159,'English',null,'UK'),(908,'The Usual Suspects',1995,106,'English','1995-08-25','UK'),(909,'Chinatown',1974,130,'English','1974-08-09','UK'),(910,'Boogie Nights',1997,155,'English','1998-02-16','UK'),(911,'Annie Hall',1977,93,'English','1977-04-20','USA'),(912,'Princess Mononoke',1957,134,'Japanese','2001-10-19','JP'),(913,'The Shawshank Redemption',1994,142,'English','1995-02-17','UK'),(914,'American Beauty',1999,122,'English',null,'UK'),(915,'Titanic',1997,194,'English','1998-01-23','UK'),(916,'Good Will Hunting',1997,126,'English','1998-06-03','UK'),(917,'Deliverance',1972,109,'English','1982-10-05','UK'),(918,'Trainspotting',1996,94,'English','1996-02-23','UK'),(919,'The Prestige',2006,130,'English','2006-11-10','UK'),(920,'Donnie Darko',2001,113,'English',null,'UK'),(921,'Slumdog Millionaire',2008,120,'English','2009-01-09','UK'),(922,'Aliens',1986,137,'English','1986-08-29','UK'),(923,'Beyond the Sea',2004,118,'English','2004-11-26','UK'),(924,'Avatar',2009,162,'English','2009-12-17','UK'),(926,'Seven Samurai',1954,207,'Japanese','1954-04-26','JP'),(927,'Spirited Away',2001,125,'Japanese','2003-09-12','JP'),(928,'Back to the Future',1985,116,'English','1985-12-04','UK'),(925,'Braveheart',1995,178,'English','1995-09-08','UK')

Create Table Actor(
act_id int,
act_fname text,
act_lname text,
act_gender char(1)
)

Insert into Actor Values (101, 'James', 'Stewart', 'M'), (102, 'Deborah', 'Kerr', 'F'), (103,'Peter','OToole','M'),(104,'Robert','De Niro','M'),(105,'F. Murray','Abraham','M'),(106,'Harrison','Ford','M'), (107, 'Nicole','Kidman','F'),(108,'Stephen','Baldwin','M'),(109,'Kack','Nicholson','M'),(110,'Mark','Wahlberg','M'),(111,'Woody','Allen','M'),(112,'Claire','Danes','F'),(113,'Tim','Robbins','M'),(114,'Kevin','Spacey','M'),(115,'Kate','Winslet','F'),(116,'Robin','Williams','M'),(117,'Jon','Voight','M'),(118,'Ewan','McGregor','M'),(119,'Christian','Bale','M'),(120,'Maggie','Gyllenhaal','F'),(121,'Dev','Patel','M'),(122,'Sigourney','Weaver','F'),(123,'David','Aston','M'),(124,'Ali','Astin','F')

Create Table Movie_cast(
act_id int,
mov_id int,
role text,
)

Insert into Movie_cast Values (101,901,'John Scottie Ferguson'),(102,902,'Miss Giddens'),(103,903,'T.E. Lawrence'),(104,904,'Michael'),(105,905,'Antonio Salieri'),(106,906,'Rick Deckard'),(107,907,'Alice Harford'),(108,908,'McManus'),(110,910,'Eddie Adams'),(111,911, 'Alvy Singer'),(112,912,'San'),(113,913,'Andy Dufresne'),(114, 914,'Lester Burnham'),(115,915,'Rose DeWitt Bukater'),(116,916,'Sean Maguire'),(117,917,'Ed'),(118,918,'Renton'),(120,920,'Elizabeth Darko'),(121,921,'Older Jamal'),(122,922,'Ripley'),(114,923,'Bobby Darin'),(109,909,'J.J. Gittes'),(119,919,'Alfred Borden')

Select * from Actor a Where act_id in (Select act_id from Movie_cast mc Where a.act_id=mc.act_id and mov_id  in (Select mov_id  from movie Where mov_title like 'Annie Hall'))

-- Exercise 2

Create Table Director(
dir_id int,
dir_fname text,
dir_lname text
)

Insert into Director Values (201,'Alfred','Hitchcock'),(202,'Jack','Clayton'),(203,'David','Lean'),(204,'Michael','Cimino'),(205,'Milos','Forman'),(206,'Ridley','Scott'),(207,'Stanley','Kubrick'),(208,'Bryan','Singer'),(209,'Roman','Polanski'),(210,'Paul','Thomas Anderson'),(211,'Woody','Allen'),(212,'Hayao','Miyazaki'),(213,'Frank','Darabont'),(214,'Sam','Mendes'),(215,'James','Cameron'),(216,'Gus','Van Sant'),(217,'John','Boorman'),(218,'Danny','Boyle'),(219,'Christopher','Nolan'),(220,'Richard','Kelly'),(221,'Kevin','Spacey'),(222,'Andrei','Tarkovsky'),(223,'Peter','Jackson')

Create Table Movie_Direction(
dir_id int,
mov_id int
)

Insert into Movie_Direction Values (201,901),(202,902),(203,903),(204,904),(205,905),(206,906),(207,907),(208,908),(209,909),(210,910),(211,911),(212,912),(213,913),(214,914),(215,915),(216,916),(217,917),(218,918),(219,919),(220,920),(218,921),(215,922),(221,923)

Select d.dir_fname, d.dir_lname from movie m,Movie_Direction mr, Director d, Movie_cast mc where d.dir_id=mr.dir_id and mr.mov_id=mc.mov_id and mc.mov_id=m.mov_id and m.mov_title like 'Eyes Wide Shut'

-- Exercise 3

Select mov_title,mov_year,mov_time,mov_dt_rel,mov_rel_country from movie Where mov_rel_country not like 'UK'

-- Exercise 4

Create Table Rating(
mov_id int,
rev_id int,
rev_stars float,
num_o_ratings int
)

Insert into Rating Values (901, 9001, 8.40,263575),(902, 9002, 7.90,20207),(903, 9003, 8.30,202778),(906, 9005, 8.20,484746),(924, 9006, 7.30,null),(908, 9007, 8.60,779489),(909, 9008,null,227235),(910, 9009, 3.00,195961),(911, 9010, 8.10,203875),(912, 9011, 8.40,null),(914, 9013, 7.00,862618),(915, 9001, 7.70,830095),(916, 9014, 4.00,642132),(925, 9015, 7.70,81328),(918, 9016, null,580301),(920, 9017, 8.10,609451),(921, 9018, 8.00,667758),(922, 9019, 8.40,511613),(923, 9020,6.70,13091)

Create Table Reviewer(
rev_id int,
rev_name nvarchar(max),
)

Insert into Reviewer Values (9001, 'Righty Sock'),(9002, 'Jack Malvern'),(9003, 'Flagrant Baronessa'),(9004, 'Alec Shaw'),(9005, null),(9006, 'Victor Woeltjen'),(9007, 'Simon Wright'),(9008, 'Neal Wruck'),(9009, 'Paul Monks'),(9010, 'Mike Salvati'),(9011, null),(9012, 'Wesley S. Walker'),(9013, 'Sasha Goldshtein'),(9014, 'Josh Cates'),(9015, 'Krug Stillo'),(9016, 'Scott LeBrun'),(9017, 'Hannah Steele'),(9018, 'Vincent Cadena'),(9019, 'Brandt Sponseller'),(9020, 'Richard Adams')

Select m.mov_title,m.mov_year,m.mov_dt_rel,d.dir_fname,dir_lname,a.act_fname, a.act_lname from Movie_cast mc,movie m,Director d,Actor a, Movie_Direction md,Reviewer r,Rating ra Where  m.mov_id=md.mov_id AND md.dir_id=d.dir_id AND m.mov_id=ra.mov_id  AND ra.rev_id=r.rev_id  AND m.mov_id=mc.mov_id  AND mc.act_id=a.act_id AND  r.rev_name is null

-- Exercise 5

Select m.mov_title from movie m,Director d,Movie_Direction md Where m.mov_id = md.mov_id and d.dir_id=md.dir_id and d.dir_fname like 'Woody' and d.dir_lname like 'Allen'

-- Exercise 6

Select distinct m.mov_year from movie m,Rating r wHERE m.mov_id in (Select mov_id from Rating Where r.rev_stars > 3)  order by m.mov_year

-- Exercise 7

Select m.mov_title from movie m Where m.mov_id not in (Select r.mov_id from Rating r)

-- Exercise 8

Select  rev_name from Reviewer Where rev_id  in (Select rev_id from Rating Where rev_stars is null)

-- Exercise 9

SELECT rev_name, mov_title, rev_stars FROM reviewer, rating, movie WHERE reviewer.rev_id=rating.rev_id AND movie.mov_id=rating.mov_id AND reviewer.rev_name IS NOT NULL AND rating.rev_stars IS NOT NULL order BY rev_name, mov_title, rev_stars asc

-- Exercise 10
-- in question
SELECT rev_name, mov_title FROM reviewer, rating, movie WHERE reviewer.rev_id=rating.rev_id AND movie.mov_id=rating.mov_id AND reviewer.rev_name IS NOT NULL AND rating.rev_stars IS NOT NULL group BY rev_name, mov_title 

-- Exercise 11

SELECT mov_title, MAX(rev_stars) FROM movie, rating WHERE movie.mov_id=rating.mov_id AND rating.rev_stars IS NOT NULL GROUP BY  mov_title ORDER BY mov_title

-- Exercise 12

SELECT DISTINCT reviewer.rev_name FROM reviewer, rating, movie WHERE reviewer.rev_id = rating.rev_id AND movie.mov_id = rating.mov_id AND movie.mov_title = 'American Beauty';

-- Exercise 13
-- in question
SELECT mov_id FROM rating WHERE rev_id NOT IN ( SELECT rev_id FROM reviewer WHERE rev_name='Paul Monks')

-- Exercise 14

SELECT reviewer.rev_name, movie.mov_title, rating.rev_stars FROM reviewer, movie, rating WHERE rating.rev_stars = (SELECT MIN(rating.rev_stars)FROM rating)AND rating.rev_id = reviewer.rev_id and rating.mov_id = movie.mov_id

-- Exercise 15
-- in question
-- error
SELECT mov_title FROM movie
JOIN  Movie_Direction
 ON movie.mov_id=Movie_Direction.mov_id
JOIN  Director
 ON movie_direction.dir_id=director.dir_id
WHERE dir_fname = 'James' AND dir_lname='Cameron'

-- Exercise 16

SELECT mov_title FROM movie WHERE mov_id IN (SELECT mov_id FROM movie_cast WHERE act_id IN (SELECT act_id FROM actor WHERE act_id IN (SELECT act_id FROM movie_cast GROUP BY act_id HAVING COUNT(act_id)>1)));
