/*
* USER DEFINED FUNCTIONS
* custom function created by the user to perform specific operations and return a value
*/

-- Find name of the employees in each department having maximum salary
SELECT * FROM employees;

CREATE OR REPLACE FUNCTION department_max_salary_employee(department_name VARCHAR)
RETURNS TABLE (emp_id INT,firstname VARCHAR,salary NUMERIC)
AS $$
BEGIN
	RETURN QUERY
	SELECT 
	e.emp_id,
	e.firstname,
	e.salary
	FROM 
		employees e 
	WHERE e.department=department_name
		AND e.salary = (
			SELECT MAX(emp.salary)
			FROM employees emp
			WHERE emp.department = department_name
		);
END;
$$ LANGUAGE plpgsql;