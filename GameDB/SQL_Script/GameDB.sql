create database Gamedb_test;
use gamedb_test;

# user table
create table Usertable(
usernumber int not null,
id varchar(32) not null,
password varchar(32) not null,
name varchar(32) not null,
eamil varchar(32) not null,
chche int not null,
primary key(usernumber)
);

# Inventorytalbe
create table Inventorytable(
itemnumber int not null,
itemname varchar(32) not null,
itemskillcode varchar(32) not null,
quantity int not null,
usernumber int not null,
primary key(itemnumber)
);

alter table Inventorytable add constraint foreign key(usernumber) references Usertable (usernumber);




