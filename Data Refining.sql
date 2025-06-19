/*
*                 DATA REFINING
* Clauses :- it is used to Provide condition in sql 
* 1. Where
* 2. Distinct
* 3. OrderBy
* 4. Limit
* 5. Like
*/

SELECT * FROM employees;

-- Where Clause :- It filters the records to show only those that meet a condition.
SELECT * FROM employees WHERE emp_id=1;
SELECT * FROM employees WHERE department='IT';
SELECT * FROM employees WHERE salary >=55000;

-- Using Logical Operator
-- OR Operator
SELECT * FROM employees WHERE department='IT' OR department='HR';

-- AND Operator
SELECT * FROM employees WHERE department='IT' AND salary >50000;

-- IN Operator :- The IN operator is a shortcut for multiple OR conditions.
SELECT * FROM employees WHERE department IN('IT','HR','Finance');

-- NOT IN Operator :- By using the NOT keyword in front of the IN operator, you return all records that are NOT any of the values in the list.
SELECT * FROM employees WHERE department NOT IN('IT','HR','Finance');

-- BETWEEN Operator :- The BETWEEN operator selects values within a given range.
SELECT * FROM employees WHERE salary BETWEEN 50000 AND 60000;

-- DISTINCT Clause :- It returns only the distinct (unique) values, removing duplicates from the result.
SELECT DISTINCT department FROM employees;

-- ORDER BY Clause :- The ORDER BY keyword is used to sort the result in ascending or descending order.
SELECT * FROM employees ORDER BY firstname; -- default would be Ascending order
SELECT * FROM employees ORDER BY firstname DESC; -- This will be in Descending Order

-- LIMIT Clause :- The LIMIT clause is used to limit the maximum number of records to return.
SELECT * FROM employees LIMIT 5;
-- The OFFSET clause is used to specify where to start selecting the records to return.
SELECT * FROM employees LIMIT 3 OFFSET 5; -- here offset it five so it will give the records from 6


-- LIKE Clause :- It helps find values that match a pattern, like names starting with 'A'.
SELECT * FROM employees WHERE firstname LIKE 'A%'; -- A se start ho par aage kuch bhi ho isliye % yeh sign
SELECT * FROM employees WHERE department LIKE '__'; -- the department which have only 2 charcater would return , eg HR, IT