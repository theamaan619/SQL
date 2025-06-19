/*
* WINDOW FUNCTIONS :-
* Windows functions,also known as analytic functions allow you to perform
* calculations across a ser of rows related to the current row.

* DEFINED by and OVER() clause.
*/

SELECT firstname, salary, SUM(salary) OVER(ORDER BY salary)  FROM employees;

/*
* BENEFITS of Window Functions
* 1. Advanced Analytics:- 
	They enable complex calculations like running totals , moving averages , 
	rank calculations , and cumulative distributions
* 2. Non-Aggregating:-
	Unlike aggregate functions , window functions do not collapse rows. This
	Means you can calculate aggregates while retaining individual row details.
* 3. Flexibility :-
	They can be used in various clauses of SQL , such as SELECT , ORDER BY and 
	HAVING , providing a lot of flexibility in writing queries
*/

-- ROW_NUMBER()
SELECT  ROW_NUMBER() OVER(PARTITION BY department) ,
	firstname,department, salary  
	FROM employees;

-- RANK()
SELECT  
	firstname, salary,
	RANK() OVER(ORDER BY salary DESC)
	FROM employees;

-- DENSE_RANK()
SELECT  
	firstname, salary,
	DENSE_RANK() OVER(ORDER BY salary DESC)
	FROM employees;

-- LAG()
SELECT  
	firstname, salary,
	LAG(salary) OVER()
	FROM employees;

-- LEAD()
SELECT  
	firstname, salary,
	LEAD(salary) OVER()
	FROM employees;

-- USE CASE
SELECT  
	firstname, salary,
	(salary - LEAD(salary) OVER(ORDER BY salary DESC)) AS salary_difference
	FROM employees;