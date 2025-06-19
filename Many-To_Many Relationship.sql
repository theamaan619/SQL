-- MANY-TO-MANY RELATIONSHIP

CREATE TABLE students(
	student_id SERIAL PRIMARY KEY,
	name VARCHAR(100) NOT NULL
);
INSERT INTO students (name) VALUES
('Amaan'),
('Ahmed'),
('Sahbaz');

CREATE TABLE courses(
	course_id SERIAL PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	fees NUMERIC NOT NULL
);
INSERT INTO courses (name,fees) VALUES
('Mathematics',500.00),
('Physics',600.00),
('Chemistry',700.00);

CREATE TABLE enrollment(
	enrollment_id SERIAL PRIMARY KEY,
	student_id int NOT NULL,
	course_id int NOT NULL,
	enrollment_date DATE NOT NULL,
	FOREIGN KEY(student_id) REFERENCES students(student_id),
	FOREIGN KEY(course_id) REFERENCES courses(course_id)
);
INSERT INTO enrollment(student_id,course_id,enrollment_date) 
VALUES
	(1,1,'2025-06-15'), -- Amaan enrolled in Mathematics
	(1,2,'2025-06-25'), -- Amaan enrolled in Physics
	(1,3,'2025-07-05'), -- Amaan enrolled in Chemistry
	(2,1,'2025-07-15'), -- Ahmed enrolled in Mathematics
	(2,2,'2025-08-05'), -- Ahmed enrolled in Physics
	(2,3,'2025-08-14'); -- Ahmed enrolled in Chemistry


SELECT 
	s.name ,
	c.name,
	c.fees,
	e.enrollment_date 
	FROM
		enrollment e
JOIN students s on e.student_id = s.student_id
JOIN courses c on e.course_id = c.course_id;