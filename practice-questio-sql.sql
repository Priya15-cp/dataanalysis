DROP TABLE IF EXISTS employees;

CREATE TABLE employees(
     employees_id SERIAL PRIMARY KEY,
	 first_name VARCHAR(50) NOT NULL,
	 last_name VARCHAR(50),
	 department VARCHAR(50),
	 salary DECIMAL(10,2) CHECK(salary > 0),
	 joining_date DATE NOT NULL,
	 age INT CHECK(age>=18)

	 );

SELECT * FROM employees;

INSERT INTO employees(first_name, last_name, department, salary, joining_date, age)
VALUES('Amrit', 'sharma', 'It', 60000.00,'2022-05-01',29),
       ('Neha','patel','HR',55000.00,'2021-08-15',32),
	   ('Ravi','Kumar','Finance',70000.00,'2020-03-10',35),
	   ('Anjali','verma','It',65000.00,'2019-11-22',28),
	   ('suresh','reddy','Operations',50000.00,'2023-01-10',23);

SELECT employees_id, first_name, department from employees;

UPDATE employees
SET salary = salary + (salary * 0.1)
WHERE department = 'It';

DELETE FROM employees
WHERE age > 34;

ALTER TABLE employees
ADD COLUMN email VARCHAR(50) NOT NULL
DEFAULT 'noemailprovided';

ALTER TABLE employees
RENAME COLUMN department TO dept_name;

SELECT first_name 
FROM employees 
WHERE joining_date > '2021-01-01';

ALTER TABLE employees
ALTER COLUMN salary TYPE INT;

SELECT first_name, age,salary FROM employees ORDER BY salary DESC;

INSERT INTO employees(first_name, last_name, dept_name, salary, joining_date, age)
VALUES('Raj','singh','Marketing',600000,'2023-09-15',30);

