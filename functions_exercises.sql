SELECT first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name ASC, first_name DESC;

SELECT first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name;

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

SELECT CONCAT(last_name, ' ', first_name)
FROM employees
WHERE last_name LIKE 'e%'
  AND last_name LIKE '%e';

SELECT last_name
FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%';

SELECT birth_date
FROM employees
WHERE MONTH(birth_date) = 12
AND DAY(birth_date) = 25;

SELECT  hire_date, birth_date
FROM employees
WHERE year(hire_date) BETWEEN 1990 AND 2000
  AND MONTH(birth_date) = 12
  AND DAY(birth_date) = 25;

SELECT *
FROM employees
WHERE year(hire_date) BETWEEN 1990 AND 2000
  AND MONTH(birth_date) = 12
  AND DAY(birth_date) = 25
ORDER BY  birth_date, hire_date desc;

SELECT DATEDIFF(now(), hire_date)
FROM employees
WHERE year(hire_date) BETWEEN 1990 AND 2000
  AND MONTH(birth_date) = 12
  AND DAY(birth_date) = 25;

# examples
# SELECT CONCAT(first_name, ' ', last_name) AS full_name
# FROM employees
# where first_name = 'Susanne';
#
# select max(emp_no)
# from employees
# max, min, average, count daydif, dayadd, datesub


SELECT last_name, first_name, count(*) as count_people
from employees
GROUP BY last_name, first_name
HAVING count_people > 1;
