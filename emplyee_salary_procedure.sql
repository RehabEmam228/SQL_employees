use employees;
drop procedure if exists select_employees;

DELIMITER $$
create procedure select_employees()
begin
select * from employees limit 1000;
end $$
DELIMITER ;

DROP PROCEDURE IF EXISTS average_salary;
delimiter $$
create procedure avg_salary()
begin
select avg(salary) from salaries;
end$$
delimiter ;

drop procedure if exists select_individual;

DELIMITER $$
create procedure select_individual(in p_emp_no INTEGER)
BEGIN
select e.emp_no, e.first_name, e.last_name, s.salary
from employees e
join salaries s on e.emp_no = s.emp_no
where e.emp_no = p_emp_no;
end$$
DELIMITER ;

CALL EMPLOYEES.select_individual(11033);