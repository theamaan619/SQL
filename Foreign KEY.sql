CREATE TABLE customers(
	customer_id SERIAL PRIMARY KEY,
	customer_name VARCHAR(100) NOT NULL
);

CREATE TABLE orders(
	order_id SERIAL PRIMARY KEY,
	order_date DATE NOT NULL,
	price NUMERIC NOT NULL,
	customer_id INTEGER NOT NULL,
	FOREIGN KEY (customer_id) REFERENCES
	customers (customer_id)
);

INSERT INTO customers(customer_name) VALUES 
('Amaan'),
('Ahmed'),
('Sahbaz'),
('Himanshu'),
('Vinayak');

INSERT INTO orders(order_date,customer_id,price) VALUES
('2025-01-01',4,690.00),
('2025-08-14',1,100.00),
('2025-08-29',2,700.00),
('2025-03-06',3,900.00),
('2025-02-13',4,10.00),
('2025-07-19',3,450.00),
('2025-10-30',2,360.00),
('2025-12-20',1,1700.00);

SELECT * from customers;
