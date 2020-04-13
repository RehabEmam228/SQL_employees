use employees;
commit;
before insert
delimiter $$
create trigger before_salaries_insert
before insert on salaries
for each row
begin
if new.salary < 0 then
set new.salary = 0;
end if;
end$$
delimiter ;
INSERT INTO salaries VALUES ('10001', -92891, '2010-06-22', '9999-01-01');
select * from salaries where emp_no = 10001;