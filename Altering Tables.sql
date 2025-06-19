SELECT * FROM person;

-- Altering Tables

-- ADD Column
ALTER TABLE person 
ADD COLUMN age INT DEFAULT 18;

-- DROP Column
ALTER TABLE person 
DROP COLUMN age;

-- RENAME a COLUMN
ALTER TABLE person
RENAME COLUMN "name" TO firstname;

-- RENAME a TABLE NAME
ALTER TABLE persons
RENAME TO person;

-- MODIFY a COLUMN
ALTER TABLE person
ALTER COLUMN firstname
SET DATA TYPE VARCHAR(200);