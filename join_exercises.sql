-- ex:
-- SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
-- FROM employees as e
--          JOIN dept_emp as de
--               ON de.emp_no = e.emp_no
--          JOIN departments as d
--               ON d.dept_no = de.dept_no
-- WHERE e.emp_no = 10010;

-- query that shows each department
-- along with the name of the current manager for that department.
# SELECT r.name, count(u.id)
# FROM users as u
#     inner join roles r on u.role_id = r.id
# group by r.name;

SELECT d.dept_name as Department_Name, CONCAT(e.first_name, ' ', e.last_name) AS Total
FROM employees as e
    join dept_manager dm
        on e.emp_no = dm.emp_no
    join departments d
        on dm.dept_no = d.dept_no
WHERE dm.to_date = '9999-01-01';

# select *
# from departments as d
#     inner join dept_manager dm on d.dept_no = dm.dept_no
# WHERE dm.to_date = '9999-01-01';;


# Find the name of all departments currently managed by women.
SELECT d.dept_name as Department_Name, CONCAT(e.first_name, ' ', e.last_name) AS Total
FROM employees as e
         join dept_manager dm
              on e.emp_no = dm.emp_no
         join departments d
              on dm.dept_no = d.dept_no
WHERE dm.to_date = '9999-01-01' AND e.gender = 'F';



# Find the current titles of employees currently working
# in the Customer Service department.
SELECT t.title, count(e.emp_no) as Total
FROM employees as e
        join titles t
             on e.emp_no = t.emp_no
        join dept_emp de
            on e.emp_no = de.emp_no
WHERE t.to_date = '9999-01-01' AND de.dept_no = 'd009'
GROUP BY t.title
ORDER BY total DESC;
#               on e.emp_no = dm.emp_no
#          join departments d
#               on dm.dept_no = d.dept_no
# WHERE dm.to_date = '9999-01-01';

# Find the current salary of all current managers.
SELECT d.dept_name as Department_Name
     , CONCAT(e.first_name, ' ', e.last_name) AS Total
    , s.salary as Salary
FROM employees as e
         join dept_manager dm
              on e.emp_no = dm.emp_no
         join salaries s
              on dm.emp_no = s.emp_no
         join departments d
              on dm.dept_no = d.dept_no
WHERE dm.to_date = '9999-01-01' AND s.to_date = '9999-01-01';

# bonus
SELECT CONCAT(e.first_name, ' ', e.last_name) AS Employee
        , d.dept_name as Department
    ,CONCAT(e2.first_name, ' ', e2.last_name) AS Manager
from employees as e
    inner join dept_emp de on e.emp_no = de.emp_no
    inner join departments d on de.dept_no = d.dept_no
    inner join  dept_manager dm on d.dept_no = dm.dept_no
    inner join employees e2 on dm.emp_no = e2.emp_no
where de.to_date = '9999-01-01'
    and dm.to_date = '9999-01-01';
