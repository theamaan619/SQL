/*
* CTE (Common Table Expression)
* CTE is a temporary result set that you can define within a query to simplify 
* complex SQL statements.
* Once CTE has been created it can only be used once. It will not be permanent
*/

/*
* USE Cases -1
	We want to calculate the average salary per department and then find all
	employees whose salary is above the average salary of their department
*/
WITH average_salary AS (
	SELECT department , 
		AVG(salary) AS avg_salary
		FROM employees 
		GROUP BY department
)
SELECT
	e.emp_id,
	e.firstname,
	e.department,
	e.salary,
	a.avg_salary
FROM employees e
JOIN average_salary a 
	ON e.department = a.department 
	WHERE e.salary >a.avg_salary;

/*
*  USE Cases - 2
	We want to find the highest-paid employee in each department.
*/
WITH max_salary AS(
	SELECT department,
	MAX(salary) as MAX_SALARY
	FROM employees
	GROUP BY department
)
SELECT
e.emp_id,
e.firstname,
e.department,
e.salary,
m.MAX_SALARY
FROM employees e
JOIN max_salary m ON e.salary = m.MAX_SALARY;









