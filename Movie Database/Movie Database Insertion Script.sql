--
-- Dumping data for table `actor`
--
INSERT INTO actor (act_id, act_fname, act_lname, act_gender) VALUES (101,'James','Stewart','M');
INSERT INTO actor (act_id, act_fname, act_lname, act_gender) VALUES (102,'Deborah','Kerr','F');
INSERT INTO actor (act_id, act_fname, act_lname, act_gender) VALUES (103,'Peter','OToole','M');
INSERT INTO actor (act_id, act_fname, act_lname, act_gender) VALUES (104,'Robert','De Niro','M');
INSERT INTO actor (act_id, act_fname, act_lname, act_gender) VALUES (105,'F. Murray','Abraham','M');
INSERT INTO actor (act_id, act_fname, act_lname, act_gender) VALUES (106,'Harrison','Ford','M');
INSERT INTO actor (act_id, act_fname, act_lname, act_gender) VALUES (107,'Nicole','Kidman','F');
INSERT INTO actor (act_id, act_fname, act_lname, act_gender) VALUES (108,'Stephen','Baldwin','M');
INSERT INTO actor (act_id, act_fname, act_lname, act_gender) VALUES (109,'Jack','Nicholson','M');
INSERT INTO actor (act_id, act_fname, act_lname, act_gender) VALUES (110,'Mark','Wahlberg','M');
INSERT INTO actor (act_id, act_fname, act_lname, act_gender) VALUES (111,'Woody','Allen','M');
INSERT INTO actor (act_id, act_fname, act_lname, act_gender) VALUES (112,'Claire','Danes','F');
INSERT INTO actor (act_id, act_fname, act_lname, act_gender) VALUES (113,'Tim','Robbins','M');
INSERT INTO actor (act_id, act_fname, act_lname, act_gender) VALUES (114,'Kevin','Spacey','M');
INSERT INTO actor (act_id, act_fname, act_lname, act_gender) VALUES (115,'Kate','Winslet','F');
INSERT INTO actor (act_id, act_fname, act_lname, act_gender) VALUES (116,'Robin','Williams','M');
INSERT INTO actor (act_id, act_fname, act_lname, act_gender) VALUES (117,'Jon','Voight','M');
INSERT INTO actor (act_id, act_fname, act_lname, act_gender) VALUES (118,'Ewan','McGregor','M');
INSERT INTO actor (act_id, act_fname, act_lname, act_gender) VALUES (119,'Christian','Bale','M');
INSERT INTO actor (act_id, act_fname, act_lname, act_gender) VALUES (120,'Maggie','Gyllenhaal','F');
INSERT INTO actor (act_id, act_fname, act_lname, act_gender) VALUES (121,'Dev','Patel','M');
INSERT INTO actor (act_id, act_fname, act_lname, act_gender) VALUES (122,'Sigourney','Weaver','F');
INSERT INTO actor (act_id, act_fname, act_lname, act_gender) VALUES (123,'David','Aston','M');
INSERT INTO actor (act_id, act_fname, act_lname, act_gender) VALUES (124,'Ali','Astin','F');


--
-- Dumping data for table `director`
--

INSERT INTO director (dir_id, dir_fname, dir_lname) VALUES (201,'Alfred','Hitchcock');
INSERT INTO director (dir_id, dir_fname, dir_lname) VALUES (202,'Jack','Clayton');
INSERT INTO director (dir_id, dir_fname, dir_lname) VALUES (203,'David','Lean');
INSERT INTO director (dir_id, dir_fname, dir_lname) VALUES (204,'Michael','Cimino');
INSERT INTO director (dir_id, dir_fname, dir_lname) VALUES (205,'Milos','Forman');
INSERT INTO director (dir_id, dir_fname, dir_lname) VALUES (206,'Ridley','Scott');
INSERT INTO director (dir_id, dir_fname, dir_lname) VALUES (207,'Stanley','Kubrick');
INSERT INTO director (dir_id, dir_fname, dir_lname) VALUES (208,'Bryan','Singer');
INSERT INTO director (dir_id, dir_fname, dir_lname) VALUES (209,'Roman','Polanski');
INSERT INTO director (dir_id, dir_fname, dir_lname) VALUES (210,'Paul','Thomas Anderson');
INSERT INTO director (dir_id, dir_fname, dir_lname) VALUES (211,'Woody','Allen');
INSERT INTO director (dir_id, dir_fname, dir_lname) VALUES (212,'Hayao','Miyazaki');
INSERT INTO director (dir_id, dir_fname, dir_lname) VALUES (213,'Frank','Darabont');
INSERT INTO director (dir_id, dir_fname, dir_lname) VALUES (214,'Sam','Mendes');
INSERT INTO director (dir_id, dir_fname, dir_lname) VALUES (215,'James','Cameron');
INSERT INTO director (dir_id, dir_fname, dir_lname) VALUES (216,'Gus','Van Sant');
INSERT INTO director (dir_id, dir_fname, dir_lname) VALUES (217,'John','Boorman');
INSERT INTO director (dir_id, dir_fname, dir_lname) VALUES (218,'Danny','Boyle');
INSERT INTO director (dir_id, dir_fname, dir_lname) VALUES (219,'Christopher','Nolan');
INSERT INTO director (dir_id, dir_fname, dir_lname) VALUES (220,'Richard','Kelly');
INSERT INTO director (dir_id, dir_fname, dir_lname) VALUES (221,'Kevin','Spacey');
INSERT INTO director (dir_id, dir_fname, dir_lname) VALUES (222,'Andrei','Tarkovsky');
INSERT INTO director (dir_id, dir_fname, dir_lname) VALUES (223,'Peter','Jackson');

--
-- Dumping data for table `genres`
--

INSERT INTO genres (gen_id, gen_title) VALUES (1001,'Action');
INSERT INTO genres (gen_id, gen_title) VALUES (1002,'Adventure');
INSERT INTO genres (gen_id, gen_title) VALUES (1003,'Animation');
INSERT INTO genres (gen_id, gen_title) VALUES (1004,'Biography');
INSERT INTO genres (gen_id, gen_title) VALUES (1005,'Comedy');
INSERT INTO genres (gen_id, gen_title) VALUES (1006,'Crime');
INSERT INTO genres (gen_id, gen_title) VALUES (1007,'Drama');
INSERT INTO genres (gen_id, gen_title) VALUES (1008,'Horror');
INSERT INTO genres (gen_id, gen_title) VALUES (1009,'Music');
INSERT INTO genres (gen_id, gen_title) VALUES (1010,'Mystery');
INSERT INTO genres (gen_id, gen_title) VALUES (1011,'Romance');
INSERT INTO genres (gen_id, gen_title) VALUES (1012,'Thriller');
INSERT INTO genres (gen_id, gen_title) VALUES (1013,'War');

--
-- Dumping data for table `movie`
--

INSERT INTO movie (mov_id, mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUES (901,'Vertigo',1958,128,'English','1958-08-24','UK');
INSERT INTO movie (mov_id, mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUES (902,'The Innocents',1961,100,'English','1962-02-19','SW');
INSERT INTO movie (mov_id, mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUES (903,'Lawrence of Arabia',1962,216,'English','1962-12-11','UK');
INSERT INTO movie (mov_id, mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUES (904,'The Deer Hunter',1978,183,'English','1979-03-08','UK');
INSERT INTO movie (mov_id, mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUES (905,'Amadeus',1984,160,'English','1985-01-07','UK');
INSERT INTO movie (mov_id, mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUES (906,'Blade Runner',1982,117,'English','1982-09-09','UK');
INSERT INTO movie (mov_id, mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUES (907,'Eyes Wide Shut',1999,159,'English',NULL,'UK');
INSERT INTO movie (mov_id, mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUES (908,'The Usual Suspects',1995,106,'English','1995-08-25','UK');
INSERT INTO movie (mov_id, mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUES (909,'Chinatown',1974,130,'English','1974-08-09','UK');
INSERT INTO movie (mov_id, mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUES (910,'Boogie Nights',1997,155,'English','1998-02-16','UK');
INSERT INTO movie (mov_id, mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUES (911,'Annie Hall',1977,93,'English','1977-04-20','USA');
INSERT INTO movie (mov_id, mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUES (912,'Princess Mononoke',1997,134,'Japanese','2001-10-19','UK');
INSERT INTO movie (mov_id, mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUES (913,'The Shawshank Redemption',1994,142,'English','1995-02-17','UK');
INSERT INTO movie (mov_id, mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUES (914,'American Beauty',1999,122,'English',NULL,'UK');
INSERT INTO movie (mov_id, mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUES (915,'Titanic',1997,194,'English','1998-01-23','UK');
INSERT INTO movie (mov_id, mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUES (916,'Good Will Hunting',1997,126,'English','1998-06-03','UK');
INSERT INTO movie (mov_id, mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUES (917,'Deliverance',1972,109,'English','1982-10-05','UK');
INSERT INTO movie (mov_id, mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUES (918,'Trainspotting',1996,94,'English','1996-02-23','UK');
INSERT INTO movie (mov_id, mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUES (919,'The Prestige',2006,130,'English','2006-11-10','UK');
INSERT INTO movie (mov_id, mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUES (920,'Donnie Darko',2001,113,'English',NULL,'UK');
INSERT INTO movie (mov_id, mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUES (921,'Slumdog Millionaire',2008,120,'English','2009-01-09','UK');
INSERT INTO movie (mov_id, mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUES (922,'Aliens',1986,137,'English','1986-08-29','UK');
INSERT INTO movie (mov_id, mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUES (923,'Beyond the Sea',2004,118,'English','2004-11-26','UK');
INSERT INTO movie (mov_id, mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUES (924,'Avatar',2009,162,'English','2009-12-17','UK');
INSERT INTO movie (mov_id, mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUES (925,'Braveheart',1995,178,'English','1995-09-08','UK');
INSERT INTO movie (mov_id, mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUES (926,'Seven Samurai',1954,207,'Japanese','1954-04-26','JP');
INSERT INTO movie (mov_id, mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUES (927,'Spirited Away',2001,125,'Japanese','2003-09-12','UK');
INSERT INTO movie (mov_id, mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUES (928,'Back to the Future',1985,116,'English','1985-12-04','UK');

--
-- Dumping data for table `movie_cast`
--

INSERT INTO movie_cast (act_id, mov_id, role) VALUES (101,901,'John Scottie Ferguson');
INSERT INTO movie_cast (act_id, mov_id, role) VALUES (102,902,'Miss Giddens');
INSERT INTO movie_cast (act_id, mov_id, role) VALUES (103,903,'T.E. Lawrence');
INSERT INTO movie_cast (act_id, mov_id, role) VALUES (104,904,'Michael');
INSERT INTO movie_cast (act_id, mov_id, role) VALUES (105,905,'Antonio Salieri');
INSERT INTO movie_cast (act_id, mov_id, role) VALUES (106,906,'Rick Deckard');
INSERT INTO movie_cast (act_id, mov_id, role) VALUES (107,907,'Alice Harford');
INSERT INTO movie_cast (act_id, mov_id, role) VALUES (108,908,'McManus');
INSERT INTO movie_cast (act_id, mov_id, role) VALUES (110,910,'Eddie Adams');
INSERT INTO movie_cast (act_id, mov_id, role) VALUES (111,911,'Alvy Singer');
INSERT INTO movie_cast (act_id, mov_id, role) VALUES (112,912,'San');
INSERT INTO movie_cast (act_id, mov_id, role) VALUES (113,913,'Andy Dufresne');
INSERT INTO movie_cast (act_id, mov_id, role) VALUES (114,914,'Lester Burnham');
INSERT INTO movie_cast (act_id, mov_id, role) VALUES (115,915,'Rose DeWitt Bukater');
INSERT INTO movie_cast (act_id, mov_id, role) VALUES (116,916,'Sean Maguire');
INSERT INTO movie_cast (act_id, mov_id, role) VALUES (117,917,'Ed');
INSERT INTO movie_cast (act_id, mov_id, role) VALUES (118,918,'Renton');
INSERT INTO movie_cast (act_id, mov_id, role) VALUES (120,920,'Elizabeth Darko');
INSERT INTO movie_cast (act_id, mov_id, role) VALUES (121,921,'Older Jamal');
INSERT INTO movie_cast (act_id, mov_id, role) VALUES (122,922,'Ripley');
INSERT INTO movie_cast (act_id, mov_id, role) VALUES (114,923,'Bobby Darin');
INSERT INTO movie_cast (act_id, mov_id, role) VALUES (109,909,'J.J. Gittes');
INSERT INTO movie_cast (act_id, mov_id, role) VALUES (119,919,'Alfred Borden');

--
-- Dumping data for table `movie_direction`
--

INSERT INTO movie_direction (dir_id, mov_id) VALUES (201,901);
INSERT INTO movie_direction (dir_id, mov_id) VALUES (202,902);
INSERT INTO movie_direction (dir_id, mov_id) VALUES (203,903);
INSERT INTO movie_direction (dir_id, mov_id) VALUES (204,904);
INSERT INTO movie_direction (dir_id, mov_id) VALUES (205,905);
INSERT INTO movie_direction (dir_id, mov_id) VALUES (206,906);
INSERT INTO movie_direction (dir_id, mov_id) VALUES (207,907);
INSERT INTO movie_direction (dir_id, mov_id) VALUES (208,908);
INSERT INTO movie_direction (dir_id, mov_id) VALUES (209,909);
INSERT INTO movie_direction (dir_id, mov_id) VALUES (210,910);
INSERT INTO movie_direction (dir_id, mov_id) VALUES (211,911);
INSERT INTO movie_direction (dir_id, mov_id) VALUES (212,912);
INSERT INTO movie_direction (dir_id, mov_id) VALUES (213,913);
INSERT INTO movie_direction (dir_id, mov_id) VALUES (214,914);
INSERT INTO movie_direction (dir_id, mov_id) VALUES (215,915);
INSERT INTO movie_direction (dir_id, mov_id) VALUES (216,916);
INSERT INTO movie_direction (dir_id, mov_id) VALUES (217,917);
INSERT INTO movie_direction (dir_id, mov_id) VALUES (218,918);
INSERT INTO movie_direction (dir_id, mov_id) VALUES (219,919);
INSERT INTO movie_direction (dir_id, mov_id) VALUES (220,920);
INSERT INTO movie_direction (dir_id, mov_id) VALUES (218,921);
INSERT INTO movie_direction (dir_id, mov_id) VALUES (215,922);
INSERT INTO movie_direction (dir_id, mov_id) VALUES (221,923);

--
-- Dumping data for table `movie_genres`
--

INSERT INTO movie_genres (mov_id, gen_id) VALUES (922,1001);
INSERT INTO movie_genres (mov_id, gen_id) VALUES (917,1002);
INSERT INTO movie_genres (mov_id, gen_id) VALUES (903,1002);
INSERT INTO movie_genres (mov_id, gen_id) VALUES (912,1003);
INSERT INTO movie_genres (mov_id, gen_id) VALUES (911,1005);
INSERT INTO movie_genres (mov_id, gen_id) VALUES (908,1006);
INSERT INTO movie_genres (mov_id, gen_id) VALUES (913,1006);
INSERT INTO movie_genres (mov_id, gen_id) VALUES (926,1007);
INSERT INTO movie_genres (mov_id, gen_id) VALUES (928,1007);
INSERT INTO movie_genres (mov_id, gen_id) VALUES (918,1007);
INSERT INTO movie_genres (mov_id, gen_id) VALUES (921,1007);
INSERT INTO movie_genres (mov_id, gen_id) VALUES (902,1008);
INSERT INTO movie_genres (mov_id, gen_id) VALUES (923,1009);
INSERT INTO movie_genres (mov_id, gen_id) VALUES (907,1010);
INSERT INTO movie_genres (mov_id, gen_id) VALUES (927,1010);
INSERT INTO movie_genres (mov_id, gen_id) VALUES (901,1010);
INSERT INTO movie_genres (mov_id, gen_id) VALUES (914,1011);
INSERT INTO movie_genres (mov_id, gen_id) VALUES (906,1012);
INSERT INTO movie_genres (mov_id, gen_id) VALUES (904,1013);

--
-- Dumping data for table `reviewer`
--

INSERT INTO reviewer (rev_id, rev_name) VALUES (9001,'Righty Sock');
INSERT INTO reviewer (rev_id, rev_name) VALUES (9002,'Jack Malvern');
INSERT INTO reviewer (rev_id, rev_name) VALUES (9003,'Flagrant Baronessa');
INSERT INTO reviewer (rev_id, rev_name) VALUES (9004,'Alec Shaw');
INSERT INTO reviewer (rev_id, rev_name) VALUES (9005,'');
INSERT INTO reviewer (rev_id, rev_name) VALUES (9006,'Victor Woeltjen');
INSERT INTO reviewer (rev_id, rev_name) VALUES (9007,'Simon Wright');
INSERT INTO reviewer (rev_id, rev_name) VALUES (9008,'Neal Wruck');
INSERT INTO reviewer (rev_id, rev_name) VALUES (9009,'Paul Monks');
INSERT INTO reviewer (rev_id, rev_name) VALUES (9010,'Mike Salvati');
INSERT INTO reviewer (rev_id, rev_name) VALUES (9011,'');
INSERT INTO reviewer (rev_id, rev_name) VALUES (9012,'Wesley S. Walker');
INSERT INTO reviewer (rev_id, rev_name) VALUES (9013,'Sasha Goldshtein');
INSERT INTO reviewer (rev_id, rev_name) VALUES (9014,'Josh Cates');
INSERT INTO reviewer (rev_id, rev_name) VALUES (9015,'Krug Stillo');
INSERT INTO reviewer (rev_id, rev_name) VALUES (9016,'Scott LeBrun');
INSERT INTO reviewer (rev_id, rev_name) VALUES (9017,'Hannah Steele');
INSERT INTO reviewer (rev_id, rev_name) VALUES (9018,'Vincent Cadena');
INSERT INTO reviewer (rev_id, rev_name) VALUES (9019,'Brandt Sponseller');
INSERT INTO reviewer (rev_id, rev_name) VALUES (9020,'Richard Adams');

--
-- Dumping data for table `rating`
--

INSERT INTO rating (mov_id, rev_id, rev_stars, num_o_rating) VALUES (901,9001,8,263575);
INSERT INTO rating (mov_id, rev_id, rev_stars, num_o_rating) VALUES (902,9002,7,20207);
INSERT INTO rating (mov_id, rev_id, rev_stars, num_o_rating) VALUES (903,9003,8,202778);
INSERT INTO rating (mov_id, rev_id, rev_stars, num_o_rating) VALUES (906,9005,8,484746);
INSERT INTO rating (mov_id, rev_id, rev_stars, num_o_rating) VALUES (924,9006,7,NULL);
INSERT INTO rating (mov_id, rev_id, rev_stars, num_o_rating) VALUES (908,9007,8,779489);
INSERT INTO rating (mov_id, rev_id, rev_stars, num_o_rating) VALUES (909,9008,NULL,227235);
INSERT INTO rating (mov_id, rev_id, rev_stars, num_o_rating) VALUES (910,9009,3,195961);
INSERT INTO rating (mov_id, rev_id, rev_stars, num_o_rating) VALUES (911,9010,8,203875);
INSERT INTO rating (mov_id, rev_id, rev_stars, num_o_rating) VALUES (912,9011,8,NULL);
INSERT INTO rating (mov_id, rev_id, rev_stars, num_o_rating) VALUES (914,9013,7,862618);
INSERT INTO rating (mov_id, rev_id, rev_stars, num_o_rating) VALUES (915,9001,7,830095);
INSERT INTO rating (mov_id, rev_id, rev_stars, num_o_rating) VALUES (916,9014,4,642132);
INSERT INTO rating (mov_id, rev_id, rev_stars, num_o_rating) VALUES (925,9015,7,81328);
INSERT INTO rating (mov_id, rev_id, rev_stars, num_o_rating) VALUES (918,9016,NULL,580301);
INSERT INTO rating (mov_id, rev_id, rev_stars, num_o_rating) VALUES (920,9017,8,609451);
INSERT INTO rating (mov_id, rev_id, rev_stars, num_o_rating) VALUES (921,9018,8,667758);
INSERT INTO rating (mov_id, rev_id, rev_stars, num_o_rating) VALUES (922,9019,8,511613);
INSERT INTO rating (mov_id, rev_id, rev_stars, num_o_rating) VALUES (923,9020,6,13091);

