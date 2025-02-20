use gamedb_test;

insert into item(item_name,item_type,item_skill,item_lever,item_price)values("크리스탈","건설재료","건설","1","200");
insert into item(item_name,item_type,item_skill,item_lever,item_price)values("식물","건설재료","건설","1","50");
insert into item(item_name,item_type,item_skill,item_lever,item_price)values("수풀","건설재료","건설","1","30");
insert into item(item_name,item_type,item_skill,item_lever,item_price)values("나무","건설재료","건설","1","100");
insert into item(item_name,item_type,item_skill,item_lever,item_price)values("야채 슈튜","허기 회복용","hp+30","3","500");
insert into item(item_name,item_type,item_skill,item_lever,item_price)values("과일 셀러드","허기 회복용","hp+50","4","800");
insert into item(item_name,item_type,item_skill,item_lever,item_price)values("수리 키트","우주복 수리용","우주복hp+100","5","1000");

# 칼럼 ID 재 배열
alter table item auto_increment = 1;

set @count = 0;
UPDATE item SET item_id = @count := @count + 1;


select * from item;


