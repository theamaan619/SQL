/*
* JOINS:-
* JOIN Operation is used to combine rowsfrom two or 
* more tables based on related column between them.
* TYPES of JOIN
* 1. CROSS JOIN
* 2. INNER JOIN
* 3. LEFT JOIN
* 4. RIGHT JOIN
*/

/*
* CROSS JOIN:-
* Every row from one table is combined with every row from another table.
*/
SELECT * FROM customers
CROSS JOIN orders;

/*
* INNER JOIN:-
* Return only the rows where there is a match between the specified
* columns in both the left (or first) and right (or second) tab
*/
SELECT * FROM customers c 
INNER JOIN orders o 
ON c.customer_id = o.customer_id;

-- Find Customer Total orders and Total price
SELECT c.customer_name,COUNT(o.order_id),SUM(o.price) as TotalPrice FROM customers c 
INNER JOIN orders o 
ON c.customer_id = o.customer_id
	GROUP BY customer_name;

/*
* LEFT JOIN:-
* Return all row from the left (or first) table and the matching rows from
* the right (or second) table
*/ 
SELECT * FROM customers c 
LEFT JOIN orders o 
ON c.customer_id = o.customer_id;

/*
* RIGHT JOIN:-
* Return all row from the right (or second) table and the matching rows from
* the left (or first) table
*/ 
SELECT * FROM customers c 
RIGHT JOIN orders o 
ON c.customer_id = o.customer_id;