create database fifadb default charset=utf8;
create user 'user'@'localhost' identified by 'password';
grant all on db.* to 'user'@'localhost';


use fifadb;

create table country(
  id        serial,
  name      nvarchar(250) unique,
  zone_id  	tinyint,
  qualified	bit
);



create table zone(
  id        	serial,
  name      	nvarchar(250) unique,
  description	text
);

