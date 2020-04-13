use employees;
drop procedure if exists employee_avg_salary_out;
delimiter $$

create procedure employee_avg_salary_out(in p_emp_no integer, out p_avg_salary decimal(10,2))
begin

select avg(s.salary)
into p_avg_salary from employees e join salaries s on e.emp_no = s.emp_no
where e.emp_no = p_emp_no;
end$$
delimiter ;