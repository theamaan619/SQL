/*
* STORED Routine:-
* An SQL statement or a set of SQL statement that can be stored on database server
* which can be call number of times.
*/

/*
* TWO TYPES of STORED Routine
* 1. STORED Procedure
* 2. User Defined Functions
*/

/*
* STORED PROCEDURE
* Set of SQL statements and procedural logic that can perform operations such as 
* inserting , updating,deleting,and querying data
*/

-- Update Procedure
CREATE OR REPLACE PROCEDURE update_emp_salary(
	p_employee_id INT,
	p_new_salary NUMERIC
)
LANGUAGE plpgsql
AS $$
BEGIN
	UPDATE employees
	SET salary = p_new_salary
	WHERE emp_id = p_employee_id;
END;
$$;

CALL update_emp_salary(1,70000);
SELECT * from employees;

-- Insert Procedure
CREATE OR REPLACE PROCEDURE add_employee(
	firstname VARCHAR,
	lastname VARCHAR,
	email VARCHAR,
	department VARCHAR,
	salary NUMERIC
)
LANGUAGE plpgsql
AS $$
BEGIN
	INSERT INTO employees(firstname,lastname,email,department,salary)
	VALUES(firstname,lastname,email,department,salary);
END;
$$;

CALL add_employee('Ahmed','Shaikh','theahmed619@gmail.com','IT',80000.00);