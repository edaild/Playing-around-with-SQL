create database Gamedb_test;
use gamedb_test;

# User
create table user(
user_uid varchar(32) not null,
user_id varchar(32) not null,
user_pw varchar(32) not null,
user_name varchar(32) not null,
user_email varchar(255) not null,
primary key(user_uid)
);

# user_Gamedata
create table user_gamedata(
game_id varchar(32) not null,
user_uid varchar(32) not null,
user_character_name varchar(25) not null,
user_lever int not null,
user_gamemoney int not null,
user_gametime time not null,
primary key(game_id)
);

# Item
create table item(
item_id int auto_increment,
item_name varchar(32) not null,
item_type varchar(32) not null,
item_skill varchar(32) not null,
item_lever varchar(32) not null,
item_price int not null,
primary key(item_id)
);

# Inventory
create table inventory(
inventory_id int auto_increment,
item_id int not null,
item_inventory_quantity int not null,
primary key(inventory_id)
);

# Store
create table store(
store_id int auto_increment,
item_id int not null,
item_store_quantity int not null,
primary key(store_id)
);

# user_game_data_inventory_store
create table user_game_data_inventory_store(
game_id varchar(32) not null,
inventory_id int not null,
store_id int not null
);

# foreign key 
alter table user_gamedata add constraint foreign key (user_uid) references user (user_uid);
alter table inventory add constraint foreign key (item_id) references item (item_id);
alter table store add constraint foreign key (item_id) references item (item_id);
alter table user_game_data_inventory_store add constraint foreign key (game_id) references user_gamedata(game_id);
alter table user_game_data_inventory_store add constraint foreign key (inventory_id) references inventory(inventory_id);
alter table user_game_data_inventory_store add constraint foreign key (store_id) references store(store_id); 






