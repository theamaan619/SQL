/*
* GROUP BY
* It helps in finding the Questions like :- Total Number of employee in each department 
*/

-- Sab Ke group Bana diye
SELECT department FROM employees GROUP BY department;

-- Total Number of Employees in each department
SELECT department , COUNT (emp_id) FROM employees GROUP BY department;

-- Total Salary of each department
SELECT department , SUM (salary) FROM employees GROUP BY department;