# Examples:
# SELECT last_name, first_name, count(*) as count_people
# from employees
# GROUP BY last_name, first_name
# HAVING count_people > 1;

# SELECT count(first_name)
# FROM employees;
#
# SELECT count(DISTINCT first_name)
# FROM employees;

SELECT DISTINCT title
from titles;

SELECT last_name
FROM employees
WHERE last_name LIKE 'e%'
  AND last_name LIKE '%e'
GROUP BY last_name;

SELECT last_name, first_name
FROM employees
WHERE last_name LIKE 'e%'
  AND last_name LIKE '%e'
GROUP BY last_name, first_name;

SELECT last_name
FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%'
group by last_name;

SELECT count(emp_no), gender
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY gender;



