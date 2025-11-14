CREATE TABLE employee(
   employee_id INT PRIMARY KEY,
   name VARCHAR(50),
   salary NUMERIC(10,2),
   hire_date DATE
);

 INSERT INTO employee(employee_id, name, salary, hire_date)
 VALUES(101, 'Ravi', 340000.00, '01-05-2005'),
       (201, 'dev', 450000.00, '08-07-2005');




SELECT * FROM employee;

TRUNCATE TABLE employee;