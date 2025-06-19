/*
* C - Create
* R - Read
* U - Update
* D - Delete
*/

/*
* CREATING TABLE
* Table:- A Table is a collection of related data held in a table format within a database
*/

CREATE TABLE person(
	id INT,
	name VARCHAR(100),
	city VARCHAR(100)
);

-- Adding Data into Table
INSERT INTO person(id,name,city) VALUES(101,'Amaan','Jaipur');

-- Adding Multiple data into Table
INSERT INTO person(id,name,city) -- If you are adding all the values from the column, so you no need to define the column
VALUES (102,'Ahmed','Lucknow'),
(103,'Sahbaz','Faridabad'),
(104,'Himanshu','Varanasi');

/* Reading Data */

-- * means to get all data from the table
SELECT * FROM person;
-- we can also select a particular columns according to our need
SELECT name,city FROM person;

/* UPDATING DATA */
UPDATE person
	SET city='Mumbai'
	WHERE id=102;

/* DELETE data from a Table */
DELETE FROM person
	WHERE id=102; 







	