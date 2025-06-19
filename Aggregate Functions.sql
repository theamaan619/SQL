/*
* AGGREGATE FUNCTIONS
* 1. COUNT
* 2. SUM
* 3. AVG
* 4. MIN
* 5. MAX
*/

-- Count function :- mostly used primary key column to avoid null values
SELECT COUNT(emp_id) FROM employees;

-- Sum Function :-
SELECT SUM(salary) FROM employees;

-- Average Function :-
SELECT AVG(salary) from employees;

-- Minimum FUnction :-
SELECT MIN(salary) from employees;

-- Maximum FUnction :-
SELECT MAX(salary) from employees;