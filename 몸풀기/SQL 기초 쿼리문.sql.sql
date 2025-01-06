# Database 생성
create database user;

# Database 조회
use user;

# database table 생성
create table user(num int auto_increment,
 id varchar(32) not null,
 password varchar(32) not null,
 name varchar(32) not null,
 email varchar(12) not null,
 primary key(num));
 
# table 조회
select * from user;

# table 조건 조회
select * from user where num = 2;


# database 레코드 추가
insert into user(id, password, name, email) value("User01","user1234","User01","user01@g");
insert into user(id, password, name, email) value("User02","user2222","User02","user02@g");
insert into user(id, password, name, email) value("User03","user3333","User03","user03@g");
insert into user(id, password, name, email) value("User04","user4444","User04","user04@g");
insert into user(id, password, name, email) value("User05","user5555","User05","user05@g");

# database 레코드 수정 (update문)
update user set password = "user1234", password = "user1111" where num = 1;

# database 레코드 삭제
delete from user where num = 5;

# table 삭제
drop table user;

# databass 삭제
drop database user;

