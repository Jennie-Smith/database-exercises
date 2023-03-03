

SELECT CONCAT(e.first_name, ' ', e.last_name) as full_name
        , e.hire_date
from employees as e
WHERE e.hire_date IN (
        SELECT e.hire_date
        FROM employees as e
        where emp_no = '101010'
    );

select t.title
from titles as t
where t.emp_no IN (
    SELECT e.emp_no
    FROM employees as e
    where e.first_name = 'Aamod'
    );

# SELECT d.dept_name as Department_Name, CONCAT(e.first_name, ' ', e.last_name) AS Total
# FROM employees as e
#          join dept_manager dm
#               on e.emp_no = dm.emp_no
#          join departments d
#               on dm.dept_no = d.dept_no
# WHERE dm.to_date = '9999-01-01' AND e.gender = 'F';

SELECT e.first_name, e.last_name,
FROM employees as e
#          join dept_manager dm
#               on e.emp_no = dm.emp_no
#          join departments d
#               on dm.dept_no = d.dept_no
# WHERE dm.to_date = '9999-01-01' AND e.gender = 'F';
where e.emp_no IN (
    select dm.emp_no
    from dept_manager as dm
    where dm.to_date = '9999-01-01'
    ) IN (
select d.dept_no
from departments d
where e.gender = 'F'
    );

