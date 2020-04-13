use employees;
drop function if exists f_emp_info;
delimiter $$
create function f_emp_info(v_first_name varchar(40), v_last_name varchar(40)) returns decimal(10,2)
deterministic
begin 
declare v_max_from_date date;
declare v_salary decimal(10,2);
select max(s.from_date) into v_max_from_date from employees e join salaries s on e.emp_no = s.emp_no
where e.first_name = v_first_name and e.last_name = v_last_name;
select s.salary into v_salary from employees e join salaries s on e.emp_no = s.emp_no
where e.first_name =  v_first_name and e.last_name = v_last_name and s.from_date = v_max_from_date;
return v_salary; 
end$$
delimiter ;

select f_emp_info('aruna','journel');