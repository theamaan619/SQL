/*
* HAVING :-
* The HAVING clause was added to SQL because the WHERE clause cannot 
* be used with aggregate functions.
*/
SELECT p_name , SUM(total_price) 
FROM billing_info 
	GROUP BY p_name
	HAVING SUM(total_price)>500;

/*
* ROLLUP:-
* ROLLUP in PostgreSQL is used to create subtotals and grand totals in the result set.
*/
SELECT 
	COALESCE(p_name,'Grand Total') ,
	SUM(total_price) 
FROM billing_info 
	GROUP BY ROLLUP(p_name)
	ORDER BY SUM(total_price);