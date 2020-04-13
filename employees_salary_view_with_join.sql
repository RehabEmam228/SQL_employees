CREATE OR REPLACE VIEW v_avg_managers_salary AS
    SELECT 
        ROUND(AVG(salary), 2) AS avg_salary
    FROM
        salaries s
            JOIN
        dept_manager m ON s.emp_no = m.emp_no;