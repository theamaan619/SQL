-- CHECK Constraint

SELECT * FROM person;

ALTER TABLE person
ADD COLUMN 
	mob VARCHAR(15) 
		CHECK (LENGTH(mob) >= 10);


INSERT INTO person(mob) 
VALUES(8433829855) ;

ALTER TABLE person
DROP CONSTRAINT person_mob_check;

-- NAMED Constraint
ALTER TABLE person
ADD CONSTRAINT mob_no_less_than_10Digits
		CHECK   (LENGTH(mob) >= 10);