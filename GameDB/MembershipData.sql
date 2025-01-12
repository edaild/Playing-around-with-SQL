create database user_db;
use user_db;
create table user(num int auto_increment, 
id varchar(32) not null, 
password varchar(32)not null, 
name varchar(32)not null, 
email varchar(255)not null, 
lever int(32) not null,
primary key(num));

insert into user(id, password, name, email, lever)value("root","root4526","DBA","root@gmail.com","60");
select * from user;
