/*
* String Functions
* 1. CONCAT , CONCAT_WS (concat with separator)
* 2. SUBSTR
* 3. LEFT , RIGHT
* 4. LENGTH
* 5. UPPER , LOWER
* 6. TRIM , LTRIM , RTRIM
* 7. REPLACE
* 8. POSITION
* 9. STRING_AGG
*/

SELECT * FROM employees;

-- CONCAT
SELECT CONCAT('HELLO','WORLD');

-- CONCAT WITH TABLES
SELECT emp_id , CONCAT(firstname ,lastname) AS Fullname FROM employees;

-- CONCAT WITH SEPARATOR
SELECT CONCAT_WS('-','Amaan','Sayyed'); --Output :- Amaan-Sayyed

-- CONCAT_WS WITH TABLES
SELECT emp_id , CONCAT_WS('-',firstname ,lastname) AS Fullname FROM employees;

-- SUBSTRING
SELECT SUBSTRING('Hey Buddy',1,4);

--REPLACE
SELECT REPLACE('Amaan','Amaan','Ahmed'); --Output :- Ahmed

--REPLACE WITH TABLES
SELECT  REPLACE(department,'IT','TECH') FROM employees;

-- REVERSE
SELECT REVERSE('Amaan');

-- LENGTH
SELECT firstname, LENGTH(firstname) AS firstname_length FROM employees;

-- Get the employee who's firstname length is  more than 5
SELECT * FROM employees WHERE LENGTH(firstname) > 5;

-- UPPER and LOWER
SELECT UPPER(firstname),LOWER(lastname) from employees;

-- LEFT (left function return the string from the left till we want , in our case it is 4)
SELECT LEFT('HELLO WORLD',4);

-- RIGHT (right function return the string from the right till we want , in our case it is 5)
SELECT RIGHT('HELLO WORLD',5);

-- Without TRIM
SELECT LENGTH('    Alright!       '); -- Output :- length is 19 including spaces

-- With TRIM
SELECT LENGTH(TRIM('    Alright!       '));  -- Output :- length is 8, because trim remove spaces

-- POSITION
SELECT 	POSITION('aa' in 'Amaan');