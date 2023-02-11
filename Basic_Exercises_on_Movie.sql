Create Database [BASIC exercises on movie Database]

Use [BASIC exercises on movie Database]

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

-- Exercise 1

Select mov_title,year(mov_dt_rel) as year_date from movie

-- Exercise 2

Select mov_year from movie Where mov_title like 'American Beauty'

-- Exercise 3

Select mov_title from movie Where mov_year = 1999

-- Exercise 4

Select mov_title from movie Where year(mov_dt_rel) < 1998

-- Exercise 5

Create Table Reviewer(
rev_id int,
rev_name text,
)

Insert into Reviewer Values (9001, 'Righty Sock'),(9002, 'Jack Malvern'),(9003, 'Flagrant Baronessa'),(9004, 'Alec Shaw'),(9005, null),(9006, 'Victor Woeltjen'),(9007, 'Simon Wright'),(9008, 'Neal Wruck'),(9009, 'Paul Monks'),(9010, 'Mike Salvati'),(9011, null),(9012, 'Wesley S. Walker'),(9013, 'Sasha Goldshtein'),(9014, 'Josh Cates'),(9015, 'Krug Stillo'),(9016, 'Scott LeBrun'),(9017, 'Hannah Steele'),(9018, 'Vincent Cadena'),(9019, 'Brandt Sponseller'),(9020, 'Richard Adams')

Select r.rev_name from Reviewer r
Union  all
Select m.mov_title from movie m

-- Exercise 6

Create Table Rating(
mov_id int,
rev_id int,
rev_stars float,
num_o_ratings int
)

Insert into Rating Values (901, 9001, 8.40,263575),(902, 9002, 7.90,20207),(903, 9003, 8.30,202778),(906, 9005, 8.20,484746),(924, 9006, 7.30,null),(908, 9007, 8.60,779489),(909, 9008,null,227235),(910, 9009, 3.00,195961),(911, 9010, 8.10,203875),(912, 9011, 8.40,null),(914, 9013, 7.00,862618),(915, 9001, 7.70,830095),(916, 9014, 4.00,642132),(925, 9015, 7.70,81328),(918, 9016, null,580301),(920, 9017, 8.10,609451),(921, 9018, 8.00,667758),(922, 9019, 8.40,511613),(923, 9020,6.70,13091)

Select  r1.rev_name from Reviewer r1
inner join Rating r
on r.rev_id=r1.rev_id Where rev_stars >= 7 and r1.rev_name is not null

-- Exercise 7

Select mov_title from movie Where mov_id not in (select mov_id from Rating)

-- Exercise 8

Select mov_title from movie Where mov_id=905 or mov_id=907 or mov_id=17

-- Exercise 9

Select mov_id, mov_title, mov_year from movie Where mov_title like '%Boogie Nights%' order by mov_year asc

-- Exercise 10

Create Table Actor(
act_id int,
act_fname text,
act_lname text,
act_gender char(1)
)

Insert into Actor Values (101, 'James', 'Stewart', 'M'), (102, 'Deborah', 'Kerr', 'F'), (103,'Peter','OToole','M'),(104,'Robert','De Niro','M'),(105,'F. Murray','Abraham','M'),(106,'Harrison','Ford','M'), (107, 'Nicole','Kidman','F'),(108,'Stephen','Baldwin','M'),(109,'Kack','Nicholson','M'),(110,'Mark','Wahlberg','M'),(111,'Woody','Allen','M'),(112,'Claire','Danes','F'),(113,'Tim','Robbins','M'),(114,'Kevin','Spacey','M'),(115,'Kate','Winslet','F'),(116,'Robin','Williams','M'),(117,'Jon','Voight','M'),(118,'Ewan','McGregor','M'),(119,'Christian','Bale','M'),(120,'Maggie','Gyllenhaal','F'),(121,'Dev','Patel','M'),(122,'Sigourney','Weaver','F'),(123,'David','Aston','M'),(124,'Ali','Astin','F')

Select act_id from Actor Where act_fname like '%Woody%' and act_lname like 'Allen'

