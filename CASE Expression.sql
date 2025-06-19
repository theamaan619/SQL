SELECT * FROM employees;

-- CASE Expression

-- Single Conditions
SELECT firstname , salary,
CASE
	WHEN salary >= 50000 THEN 'High_SALARY'
	ELSE 'Low_SALARY'
END AS salary_category
FROM
	employees;

-- CASE Expression with multiple conditions
SELECT firstname , salary,
CASE
	WHEN salary >= 55000 THEN 'High_SALARY'
	WHEN salary >=48000 AND
		salary <55000 THEN 'Mid_SALARY'
	ELSE 'Low_SALARY'
END AS salary_category
FROM
	employees;

-- Give the bonus of 10% as per the salary
SELECT firstname , salary,
CASE
	WHEN salary > 0 THEN Round(salary*.10)
END AS bonus
FROM
	employees;

-- Give Bonus and calculate the total salary
SELECT 
  firstname, 
  salary,
  ROUND(salary * 0.10) AS bonus,
  salary + ROUND(salary * 0.10) AS total_salary
FROM 
  employees;

-- Group the salary category with total no of employee in each category
SELECT 
CASE
	WHEN salary >= 55000 THEN 'High_SALARY'
	WHEN salary >=48000 AND
		salary <55000 THEN 'Mid_SALARY'
	ELSE 'Low_SALARY'
END AS salary_category,COUNT(emp_id)
FROM
	employees
GROUP BY salary_category;
	