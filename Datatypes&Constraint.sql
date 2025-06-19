/* 
* DATATYPES :-
* An Attribute that specifies the type of data in a column of our database-table
* Most Widely Use are :-
* 1. Numeric - INT DOUBLE FLOAT DECIMAL
* 2. String - VARCHAR
* 3. Date - DATE
* 4. Boolean - BOOLEAN
*/




/* 
* CONSTRAINT :- A constraint in PostgreSQL is a rule applied to a column   
* 1.Primary Key
* 2. NOT NULL
* 3. Default
* 4.Serial
* 5.Unique
*/

/*
* Primary Key :- 
* 1. The PRIMARY KEY constraint uniquely identifies each record in a table
* 2. Primary Keys must contain UNIQUE values, and cannot contain NULL values
* 3. A table can have only ONE primary key
*/

/*
* NOT NULL :-
* CREATE TABLE customers(
	id INT NOT NULL,
	name VARCHAR(100) NOT NULL
);
*/

/*
* DEFAULT Value
* CREATE TABLE customers(
	acc_no INT PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	acc_type VARCHAR(50) NOT NULL DEFAULT 'Savings'
);
*/

/*
* AUTO_INCREMENT
* CREATE TABLE employees(
	id SERIAL PRIMARY KEY,
	firstname VARCHAR(50),
	lastname VARCHAR(50)
);
*/





