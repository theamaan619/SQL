/*
* TRIGGERS :-
	Triggers are special procedures in a database that automatically execute 
	predefined actions in response to certain events on a specified table or view
*/

/*
* USE Case
	Create a Trigger so that If we INSERT/UPDATE negative salary in a table,
	It will be triggered and set it to 0.
*/

SELECT * FROM employees;

CALL update_emp_salary(2,52000);

CREATE OR REPLACE FUNCTION check_salary()
RETURNS TRIGGER AS $$
BEGIN
	IF NEW.salary < 0 THEN
		NEW.salary = 0;
	END IF;
	RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER before_update_salary
BEFORE UPDATE ON employees
FOR EACH ROW 
EXECUTE FUNCTION check_salary();


