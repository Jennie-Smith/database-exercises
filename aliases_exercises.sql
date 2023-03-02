SELECT CONCAT(last_name, ' ', first_name) AS full_name
from employees
Limit 10;

SELECT birth_date AS DOB
FROM employees;

SELECT CONCAT(emp_no, ' - ', last_name, ' ', first_name) AS full_name
    , birth_date AS DOB
from employees
Limit 10;
