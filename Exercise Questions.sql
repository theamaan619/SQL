SELECT * FROM employees;

-- Find different types of departments in the database
SELECT DISTINCT department FROM employees;

-- Display records ordered by salary from high to low
SELECT * FROM employees ORDER BY salary DESC;

-- Show only the first 3 records (top 3 rows)
SELECT * FROM employees LIMIT 3;

-- Show records where the first name starts with the letter 'A'
SELECT * FROM employees WHERE firstname LIKE 'A%';

-- Show records where the last name has exactly 4 characters
SELECT * FROM employees WHERE LENGTH(lastname) = 4;

-- Find Total no of employee in database
SELECT COUNT(emp_id) AS Total_emp from employees;

-- Find Total no of employee in each department
SELECT department,count(emp_id) from employees GROUP BY department;

-- Find lowest salary paying
SELECT MIN(salary) from employees;

-- Find Highest Salary paying
SELECT MAX(salary)  from employees ;

-- Find whole row where salary is highest
SELECT * FROM employees 
WHERE salary = (SELECT MAX(salary) FROM employees);

-- Find Second Highest Salary
SELECT MAX(salary) FROM employees 
WHERE salary < (SELECT MAX(salary) FROM employees) ;

-- Third Highest Salary
SELECT * from employees ORDER BY salary DESC LIMIT 1 OFFSET 2;

-- Find total salary paying in IT Department
SELECT SUM(salary) FROM employees WHERE department='IT';

-- Average Salary Paying in each department
SELECT department , AVG(salary) from employees GROUP BY department;










