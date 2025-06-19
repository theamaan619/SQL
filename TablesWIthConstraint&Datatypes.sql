CREATE TABLE employees(
	emp_id SERIAL PRIMARY KEY,
	firstname VARCHAR(100) NOT NULL,
	lastname VARCHAR(100) NOT NULL,
	email varchar(100) NOT NULL UNIQUE,
	department VARCHAR(50),
	salary DECIMAL(10,2) DEFAULT 30000.00,
	hire_date DATE NOT NULL DEFAULT CURRENT_DATE
);

INSERT INTO employees (firstname, lastname, email, department, salary, hire_date)
VALUES
  ('Amaan', 'Sayyed', 'amaansayed63@gmail.com', 'IT', 51000.00, '2022-09-01'),
  ('Raj', 'Sharma', 'raj.sharma@example.com', 'IT', 50000.00, '2020-01-15'),
  ('Priya', 'Singh', 'priya.singh@example.com', 'HR', 45000.00, '2019-03-22'),
  ('Arjun', 'Verma', 'arjun.verma@example.com', 'IT', 55000.00, '2021-06-01'),
  ('Suman', 'Patel', 'suman.patel@example.com', 'Finance', 60000.00, '2018-07-30'),
  ('Kavita', 'Rao', 'kavita.rao@example.com', 'HR', 47000.00, '2020-11-10'),
  ('Amit', 'Gupta', 'amit.gupta@example.com', 'Marketing', 52000.00, '2021-08-05'),
  ('Neha', 'Desai', 'neha.desai@example.com', 'IT', 48000.00, '2019-05-18'),
  ('Rahul', 'Kumar', 'rahul.kumar@example.com', 'IT', 53000.00, '2021-02-14'),
  ('Anjali', 'Mehta', 'anjali.mehta@example.com', 'Finance', 61000.00, '2018-12-03'),
  ('Vijay', 'Nair', 'vijay.nair@example.com', 'Marketing', 50000.00, '2020-10-25');


INSERT INTO employees (firstname, lastname, email, department)
 VALUES
('Amaan', 'Sayyed', 'amaansayed63@gmail.com', 'IT');

select * from employees;
