SELECT * FROM employees;

-- TASK 1
SELECT CONCAT_WS(':',emp_id,firstname,lastname,department) FROM employees; -- Output :- 1:Amaan:Sayyed:IT

-- TASK 2
SELECT CONCAT_WS(':',emp_id,CONCAT_WS(' ',firstname,lastname),department,salary) FROM employees; -- Output:- 1:Amaan Sayyed:IT:51000.00

-- TASK 3
SELECT CONCAT_WS(':',emp_id,firstname,UPPER(department)) FROM  employees WHERE emp_id=5; -- Output :- 5:Suman:FINANCE

-- TASK 4
SELECT CONCAT(LEFT(department,1),emp_id) , firstname from employees; -- Output :- H:3 Priya