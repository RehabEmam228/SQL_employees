# Group by was very important in that

CREATE OR REPLACE VIEW v_employee_last_date AS
    SELECT 
        emp_no,
        MAX(from_date) AS from_date,
        MAX(to_date) AS last_date
    FROM
        dept_emp
    GROUP BY emp_no;



