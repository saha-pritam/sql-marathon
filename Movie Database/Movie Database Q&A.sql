-- 1.	Write a SQL query to find the name and year of the movies. Return movie title, movie release year. 
select mov_title, mov_year from movie;

-- 2.	Write a SQL query to find when the movie 'American Beauty' released. Return movie release year. 
select mov_year from movie where mov_title='American Beauty';

-- 3.	Write a SQL query to find the movie that was released in 1999. Return movie title. 
select mov_title from movie where mov_year=1999;

-- 4.	Write a SQL query to find those movies, which were released before 1998. Return movie title. 
select mov_title from movie where mov_year<1998;

-- 5.	Write a SQL query to find the name of all reviewers and movies together in a single list. 
select rev_name from reviewer union select mov_title from movie;

-- 6.	Write a SQL query to find all reviewers who have rated seven or more stars to their rating. Return reviewer name.
select reviewer.rev_name from reviewer join rating on reviewer.rev_id=rating.rev_id and rating.rev_stars>=7;

-- 7.	Write a SQL query to find the movies without any rating. Return movie title. 
select mov_title from movie left join rating using(mov_id) where rev_stars is null;

-- 8.	Write a SQL query to find the movies with ID 905 or 907 or 917. Return movie title. 
select mov_title from movie where mov_id in (905,907,917);

-- 9.	Write a SQL query to find the movie titles that contain the word 'Boogie Nights'. Sort the result-set in ascending order by movie year. Return movie ID, movie title and movie release year. 
select mov_id, mov_title, mov_year from movie where mov_title like '%Boogie Nights%' order by mov_year;

-- 10.	Write a SQL query to find those actors with the first name 'Woody' and the last name 'Allen'. Return actor ID. 
select act_id from actor where act_fname='Woody' and act_lname='Allen';

-- 11.	Write a SQL query to find the actors who played a role in the movie 'Annie Hall'. Return all the fields of actor table. 
select actor.act_id, actor.act_fname, actor.act_lname, actor.act_gender from actor join movie_cast using(act_id) join movie on movie.mov_id=movie_cast.mov_id and movie.mov_title='Annie Hall';

-- 12.	Write a SQL query to find the director of a film that cast a role in 'Eyes Wide Shut'. Return director's first name, last name. 
select d.dir_fname, d.dir_lname from director d join movie_direction md using(dir_id) join movie m on m.mov_id=md.mov_id and m.mov_title='Eyes Wide Shut';

-- 13.	Write a SQL query to find those movies that have been released in countries other than the United Kingdom. Return movie title, movie year, movie time, and date of release, releasing country. 
select mov_title, mov_year, mov_time, mov_dt_rel, mov_rel_country from movie where mov_rel_country <> 'UK';

-- 14.	Write a SQL query to find for movies whose reviewer is unknown. Return movie title, year, release date, director first name, last name, actor first name, last name. 
select mov_title, mov_year, mov_dt_rel, dir_fname, dir_lname, act_fname, act_lname from movie left join rating using(mov_id) left join reviewer using(rev_id) left join movie_cast using(mov_id) left join actor using(act_id) left join movie_direction using(mov_id) left join director using(dir_id) where rev_id is null;

-- 15.	Write a SQL query to find those movies directed by the director whose first name is Woddy and last name is Allen. Return movie title. 
select mov_title from movie join movie_direction using(mov_id) join director on director.dir_id=movie_direction.dir_id and director.dir_fname="Woody" and director.dir_lname="Allen";

-- 16.	Write a SQL query to determine those years in which there was at least one movie that received a rating of at least three stars. Sort the result-set in ascending order by movie year. Return movie year. 
select distinct mov_year from movie join rating on movie.mov_id=rating.mov_id where rating.rev_stars>=3 order by mov_year;

-- 17.	Write a SQL query to search for movies that do not have any ratings. Return movie title. 
select mov_title from movie where mov_id not in (select mov_id from rating);

-- 18.	Write a SQL query to find those reviewers who have not given a rating to certain films. Return reviewer name. 
select rev_name from reviewer join rating on reviewer.rev_id=rating.rev_id and rating.rev_stars is null;

-- 19.	Write a SQL query to find movies that have been reviewed by a reviewer and received a rating. Sort the result-set in ascending order by reviewer name, movie title, review Stars. Return reviewer name, movie title, review Stars. 
select rev_name, mov_title, rev_stars from reviewer join rating on reviewer.rev_id=rating.rev_id and rating.rev_stars is not null join movie using(mov_id) order by rev_name, mov_title, rev_stars;

-- 20.	Write a SQL query to find movies that have been reviewed by a reviewer and received a rating. Group the result set on reviewer’s name, movie title. Return reviewer’s name, movie title. 
select rev_name, mov_title from reviewer join rating on reviewer.rev_id=rating.rev_id and rating.rev_stars is not null join movie using(mov_id) group by rev_name, mov_title;

-- 21.	Write a SQL query to find those movies, which have received highest number of stars. Group the result set on movie title and sorts the result-set in ascending order by movie title. Return movie title and maximum number of review stars.
select mov_title, rev_stars from movie join rating using(mov_id) where rev_stars=(select max(rev_stars) from rating) order by mov_title;

-- 22.	Write a SQL query to find all reviewers who rated the movie 'American Beauty'. Return reviewer name. 
select rev_name from reviewer join rating using(rev_id) where mov_id=(select mov_id from movie where mov_title='American Beauty');

-- 23.	Write a SQL query to find the movies that have not been reviewed by any reviewer body other than 'Paul Monks'. Return movie title. 
select mov_title from movie natural join rating where mov_id not in (select mov_id from rating natural join reviewer where rev_name<>'Paul Monks');

-- 24.	Write a SQL query to find the movies with the lowest ratings. Return reviewer name, movie title, and number of stars for those movies. 
select mov_title, rev_stars from movie join rating using(mov_id) where rev_stars=(select min(rev_stars) from rating) order by mov_title;

-- 25.	Write a SQL query to find the movies directed by 'James Cameron'. Return movie title. 
select mov_title from movie join movie_direction on movie.mov_id=movie_direction.mov_id and dir_id=(select dir_id from director where dir_fname='James' and dir_lname='Cameron');

-- 26.	Write a SQL query to find all reviewers whose ratings contain a NULL value. Return reviewer name. 
select rev_name from reviewer natural join rating where rev_stars is null;

-- 27.	Write a SQL query to find out who was cast in the movie 'Annie Hall'. Return actor first name, last name and role. 
select act_fname, act_lname, role from movie natural join movie_cast natural join actor where mov_title='Annie Hall';

-- 28.	Write a SQL query to find the director who directed a movie that featured a role in 'Eyes Wide Shut'. Return director first name, last name and movie title. 
select dir_fname, dir_lname, mov_title from movie natural join movie_direction natural join director where mov_title='Eyes Wide Shut';

-- 29.	Write a SQL query to find the director of a movie that cast a role as Sean Maguire. Return director first name, last name and movie title. 
select dir_fname, dir_lname, mov_title from movie natural join movie_direction natural join director natural join movie_cast natural join actor where role='Sean Maguire';

-- 30.	Write a SQL query to find out which actors have not appeared in any movies between 1990 and 2000 (Begin and end values are included.). Return actor first name, last name, movie title and release year. 
select act_fname, act_lname, mov_title, mov_year from movie natural join movie_cast natural join actor where act_id not in (select act_id from movie natural join movie_cast where mov_year between 1990 and 2000);

-- 31.	Write a SQL query to return director's first name, last name, genre title and number of movies on that genre. Sort on ascending order by director first name and last name
select dir_fname, dir_lname, gen_title, count(mov_id) from genres natural join movie_genres natural join movie_direction natural join director group by dir_fname, dir_lname, gen_title order by dir_fname, dir_lname;

-- 32.	Write a SQL query to find the movies with year and genres. Return movie title, movie year and generic title. 
select mov_title, mov_year, gen_title from movie natural join movie_genres natural join genres;

-- 33.	Write a SQL query to find all the movies with movie name, year, genres, and name of the director. 
select mov_title, mov_year, gen_title, dir_fname, dir_lname from movie natural join movie_direction natural join director join movie_genres on movie.mov_id=movie_genres.mov_id natural join genres;

-- 34.	Write a SQL query to find the movies released before 1st January 1989. Sort the result-set in descending order by date of release. Return movie title, release year, date of release, duration, and first and last name of the director. 
select mov_title, mov_year, mov_dt_rel, mov_time, dir_fname, dir_lname from movie natural join movie_direction natural join director where mov_dt_rel<='1989-01-01' order by mov_dt_rel desc;

-- 35.	Write a SQL query to calculate the average movie length and count the number of movies in each genre. Return genre title, average time and number of movies for each genre. 
select gen_title, avg(mov_time) as average_time, count(mov_id) as total_movie from movie natural join movie_genres natural join genres group by gen_title;

-- 36.	Write a SQL query to find movies with the shortest duration. Return movie title, movie year, director first name, last name, actor first name, last name and role. 
select mov_title, mov_year, dir_fname, dir_lname, act_fname, act_lname, role from movie natural join movie_direction natural join director join movie_cast on movie.mov_id=movie_cast.mov_id natural join actor where mov_time = (select min(mov_time) from movie);

-- 37.	Write a SQL query to find the years in which a movie received a rating of 3 or 4. Sort the result in increasing order on movie year. 
select distinct mov_year from movie join rating on movie.mov_id=rating.mov_id and rev_stars in (3,4) order by mov_year;

-- 38.	Write a SQL query to get the reviewer name, movie title, and stars in an order that reviewer name will come first, then by movie title, and lastly by number of stars. 
select rev_name, mov_title, rev_stars from movie join rating on movie.mov_id=rating.mov_id and rating.rev_stars is not null natural join reviewer order by rev_name, mov_title, rev_stars;

-- 39.	Write a SQL query to find those movies that have at least one rating. Sort the result-set on movie title. Return movie title and review stars. 
select mov_title, rev_stars from movie join rating on movie.mov_id=rating.mov_id and rating.rev_stars is not null order by mov_title; 

-- 40.	Write a SQL query to find out which movies have received ratings. Return movie title, director first name, director last name and review stars. 
select mov_title, dir_fname, dir_lname, rev_stars from movie join rating on movie.mov_id=rating.mov_id and rating.rev_stars is not null join movie_direction on movie.mov_id=movie_direction.mov_id natural join director;

-- 41.	Write a SQL query to find movies in which one or more actors have acted in more than one film. Return movie title, actor first and last name, and the role. 
select mov_title, act_fname, act_lname, role from movie natural join movie_cast natural join actor where act_id in ( select act_id from movie_cast group by (act_id) having count(mov_id)>1);

-- 42.	Write a SQL query to return director first name, last name, movie title, actor first name and last name, role whose actor first name is Claire and actor last name is Danes
select dir_fname, dir_lname, mov_title, act_fname, act_lname from movie_cast join actor on movie_cast.act_id=actor.act_id and actor.act_fname='Claire' and actor.act_lname='Danes' natural join movie natural join movie_direction natural join director;

-- 43.	Write a SQL query to find for actors whose films have been directed by them. Return actor first name, last name, movie title and role. 
select act_fname, act_lname, mov_title, role from movie natural join movie_cast natural join actor where (act_fname, act_lname) in (select dir_fname, dir_lname from director);

-- 44.	Write a SQL query to find the cast list of the movie ‘Chinatown’. Return first name, last name. 
select act_fname, act_lname from actor where act_id in (select act_id from movie_cast where mov_id = (select mov_id from movie where mov_title='chinatown'));

-- 45.	Write a SQL query to find those movies where actor’s first name is 'Harrison' and last name is 'Ford'. Return movie title. 
select mov_title from movie join movie_cast on movie.mov_id=movie_cast.mov_id and act_id=(select act_id from actor where act_fname='Harrison' and act_lname='Ford');

-- 46.	Write a SQL query to find the highest-rated movies. Return movie title, movie year, review stars and releasing country. 
select mov_title, mov_year, rev_stars, mov_rel_country from movie join rating on movie.mov_id=rating.mov_id and rating.rev_stars=(select max(rev_stars) from rating);

-- 47.	Write a SQL query to find the highest-rated ‘Mystery Movies’. Return the title, year, and rating. 
select mov_title, mov_year, rev_stars from movie join movie_genres on movie.mov_id=movie_genres.mov_id and gen_id=(select gen_id from genres where gen_title='Mystery')  join rating on movie.mov_id=rating.mov_id and rating.rev_stars = (select max(rev_stars) from movie join movie_genres on movie.mov_id=movie_genres.mov_id and gen_id=(select gen_id from genres where gen_title='Mystery') join rating on movie.mov_id=rating.mov_id);

-- 48.	Write a query in SQL to generate a report, which contain the fields movie title, name of the female actor, year of the movie, role, movie genres, the director, date of release, and rating of that movie.
select mov_title, act_fname, act_lname, mov_year, role, gen_title, dir_fname, dir_lname, mov_dt_rel, rev_stars from actor join movie_cast on actor.act_id=movie_cast.act_id and actor.act_gender='F' natural join movie natural join movie_genres natural join genres natural join movie_direction natural join director natural join rating

