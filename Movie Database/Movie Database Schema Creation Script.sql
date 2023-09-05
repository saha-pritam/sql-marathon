drop database if exists movie;
create database if not exists movie;
use movie;

drop table if exists actor;
create table if not exists actor
(
	act_id integer primary key,
    act_fname char(20),
    act_lname char(20),
    act_gender char(1)
);
    
drop table if exists genres;
create table if not exists genres
(
	gen_id integer primary key,
    gen_title char(20)
);

drop table if exists director;
create table if not exists director
(
	dir_id integer primary key,
	dir_fname char(20),
	dir_lname char(20)
);

drop table if exists movie;
create table if not exists movie
(
	mov_id integer primary key,
	mov_title char(50),
	mov_year integer,
	mov_time integer,
	mov_lang char(50),
	mov_dt_rel date,
	mov_rel_country char(5)
);

drop table if exists movie_genres;
create table if not exists movie_genres
(
	mov_id integer,
    gen_id integer,
    constraint fk_movie_genres_1 foreign key(mov_id) references movie(mov_id),
    constraint fk_movie_genres_2 foreign key(gen_id) references genres(gen_id)
);

drop table if exists movie_direction;
create table if not exists movie_direction
(
	dir_id integer,
	mov_id integer,
    constraint fk_movie_direction_1 foreign key(dir_id) references director(dir_id),
    constraint fk_movie_direction_2 foreign key(mov_id) references movie(mov_id)
);

drop table if exists reviewer;
create table if not exists reviewer
(
	rev_id integer primary key,
    rev_name char(30)
);

drop table if exists rating;
create table if not exists rating
(
	mov_id integer,
    rev_id integer,
    rev_stars integer,
    num_o_rating integer,
    constraint fk_rating_1 foreign key(mov_id) references movie(mov_id),
    constraint fk_rating_2 foreign key(rev_id) references reviewer(rev_id)
);

drop table if exists movie_cast;
create table if not exists movie_cast
(
	act_id integer,
    mov_id integer,
    role char(30),
    constraint fk_movie_cast_1 foreign key(act_id) references actor(act_id),
    constraint fk_movie_cast_2 foreign key(mov_id) references movie(mov_id)
);

