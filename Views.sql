/*
* VIEWS:-
* Views in PostgreSQL are a powerful tool that allows you to simplify 
* complex queries by abstracting them into virtual tables. 
*/
CREATE VIEW billing_info AS
SELECT 
	c.cust_name , 
	o.ord_date,
	p.p_name,
	p.price,
	ord.quantity,
	(p.price * ord.quantity) as Total_Price
	FROM 
		order_items ord
JOIN 
	orders o ON ord.ord_id = o.ord_id
JOIN 
	products p ON ord.p_id = p.p_id
JOIN 
	customers c ON o.cust_id = c.cust_id;