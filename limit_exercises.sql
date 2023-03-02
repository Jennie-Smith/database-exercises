# example:
# SELECT emp_no, first_name, last_name
# FROM employees
# WHERE first_name Like 'M%'
# ORDER BY emp_no
# LIMIT 10 OFFSET 50;

SELECT DISTINCT last_name
FROM employees
ORDER BY last_name DESC
LIMIT 10;

SELECT emp_no
FROM salaries
ORDER BY salary DESC
LIMIT 5;

SELECT emp_no
FROM salaries
ORDER BY salary DESC
LIMIT 5 OFFSET 45;
