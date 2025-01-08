   # Database 생성
create database user_db;

# Database 조회
use user_db;

# database table 생성
create table user(num int auto_increment,
 id varchar(32) not null,
 password varchar(32) not null,
 name varchar(32) not null,
 email varchar(255) not null,
 primary key(num));
 
# table 조회
select * from user;

# table 조건 조회
select * from user where num = 2;

# num 기준으로 숫자가 가장 높은 수 부터 출력(select * from user order by num;와 select * from user order by num asc;는 서로 동일한 결과를 출력한다.) 
select * from user order by num desc;

# database 레코드 추가
insert into user(id, password, name, email) value("User01","user1234","User01","user01@gmail.com");
insert into user(id, password, name, email) value("User02","user2222","User02","user02@gmail.com");
insert into user(id, password, name, email) value("User03","user3333","User03","user03@gmail.com");
insert into user(id, password, name, email) value("User04","user4444","User04","user04@gmail.com");
insert into user(id, password, name, email) value("User05","user5555","User05","user05@gmail.com");

# database 레코드 수정 (update문)
update user set password = "user1111" where num = 1;

# database 레코드 삭제
delete from user where num = 5;

# table 삭제
drop table user;

# databass 삭제
drop database user_db;

