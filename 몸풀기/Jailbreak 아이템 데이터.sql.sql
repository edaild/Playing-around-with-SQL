create database Item;
use Item;

# 비살상 아이템 테이블
create table ItemTable(num int auto_increment, 
name Varchar(32) not null,
price int(32) not null,
speed varchar(32) not null,
recovery varchar(32) not null,
primary key(num)
);

# 살상용 아이템 테이블
CREATE TABLE GunTable (num INT AUTO_INCREMENT,
name VARCHAR(32) NOT NULL,
price int(32) not null,
bulletCount int(32) not null,
damage varchar(32) NOT NULL,
gamePass varchar(32) not null,
PRIMARY KEY (num)
);


# 비살상 무기 데이터 래이블
insert into ItemTable(name,price,speed,recovery)value("도넛","0","0","30%");
insert into ItemTable(name,price,speed,recovery)value("에너지 드림크","0","1.5%","0%");
insert into ItemTable(name,price,speed,recovery)value("연막탄","1200","0%","0%");
insert into ItemTable(name,price,speed,recovery)value("포스필드 런처","30000","0%","1초당 5HP");
insert into ItemTable(name,price,speed,recovery)value("쌍안경","5000","0%","0%");
insert into ItemTable(name,price,speed,recovery)value("손전등","1000","0%","0%");

# 살상용 무데 데이터 레이블
insert into GunTable(name,price,bulletCount,damage,gamePass) value ("권총","0","8","15","N");
insert into GunTable(name,price,bulletCount,damage,gamePass) value ("소음기 권총","0","8","15","SWAT");
insert into GunTable(name,price,bulletCount,damage,gamePass) value ("리볼버","10000","6","25","N");
insert into GunTable(name,price,bulletCount,damage,gamePass) value ("플린트락","10000","1","45","N");
insert into GunTable(name,price,bulletCount,damage,gamePass) value ("우지 기관단총","25000","15","7","N");
insert into GunTable(name,price,bulletCount,damage,gamePass) value ("소총","0","30","5","SWAT, BOSS");
insert into GunTable(name,price,bulletCount,damage,gamePass) value ("AK-47","15000","30","6","N");
insert into GunTable(name,price,bulletCount,damage,gamePass) value ("저격소총","50000","1","40","N");
insert into GunTable(name,price,bulletCount,damage,gamePass) value ("샷건","1000","5","30","N");
insert into GunTable(name,price,bulletCount,damage,gamePass) value ("플라즈마 권총","50000","20","6","N");
insert into GunTable(name,price,bulletCount,damage,gamePass) value ("플라즈마 샷건","50000","4","6","N");
insert into GunTable(name,price,bulletCount,damage,gamePass) value ("로켓 런처","40000","10","76","N");

select * from ItemTable order by price;
select * from GunTable order by price;

