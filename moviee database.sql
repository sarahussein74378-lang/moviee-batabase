CREATE TABLE actor (
act_id INT PRIMARY KEY,
act_fname CHAR(20),
act_lname CHAR(20),
act_gender CHAR(1)
);
CREATE TABLE director (
dir_id INT PRIMARY KEY,
dir_fname CHAR(20),
dir_lname CHAR(20)
);
CREATE TABLE movie (
mov_id INT PRIMARY KEY,
mov_title CHAR(50),
mov_year INT,
mov_time INT,
mov_lang CHAR(50),
mov_dt_rel DATE,
mov_rel_country CHAR(5)
);
CREATE TABLE reviewer (
rev_id INT PRIMARY KEY,
rev_name CHAR(30)
);
create table genres(
gen_id int primary key,
gen_title char(20),
);
create table movie_direction(
mov_id int,
dir_id int ,
primary key(mov_id,dir_id),
foreign key(mov_id) references movie(mov_id),

foreign key(dir_id) references director(dir_id)
);
create table movie_cast(
act_id int,
mov_id int,
role char(30),
primary key (act_id,mov_id),
foreign key (act_id) references actor(act_id),
foreign key (mov_id) references movie(mov_id)
);
CREATE TABLE movie_genres (
mov_id INT,
gen_id INT,
PRIMARY KEY (mov_id, gen_id),
FOREIGN KEY (mov_id) REFERENCES movie(mov_id),
FOREIGN KEY (gen_id) REFERENCES genres(gen_id)
);
CREATE TABLE rating (
mov_id INT,
rev_id INT,
rev_stars INT,
num_o_ratings INT,
PRIMARY KEY (mov_id, rev_id),
FOREIGN KEY (mov_id) REFERENCES movie(mov_id),
FOREIGN KEY (rev_id) REFERENCES reviewer(rev_id)
);