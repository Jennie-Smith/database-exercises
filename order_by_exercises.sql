SELECT first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name ASC, first_name DESC;

SELECT emp_no, last_name
FROM employees
WHERE last_name LIKE 'e%'
ORDER BY emp_no DESC;

SELECT last_name
FROM employees
WHERE last_name LIKE '%q%';

SELECT emp_no, first_name
FROM employees
WHERE first_name = 'Irena'
   OR  first_name = 'Vidya'
   OR first_name = 'Maya';

SELECT emp_no, first_name, gender
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
  AND gender = 'M';

SELECT last_name
FROM employees
WHERE last_name LIKE 'e%'
   OR last_name LIKE '%e';

SELECT last_name
FROM employees
WHERE last_name LIKE 'e%'
  AND last_name LIKE '%e';

SELECT last_name
FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%';