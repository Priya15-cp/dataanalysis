CREATE TABLE employees(
    Employee_id Int primary key,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	Department_id int
	
);

INSERT INTO employees(employee_id, first_name, last_name, department_id)
VALUES(1,'Rahul','Sharma',101),
      (2,'priya','Meheta',102),
	  (3,'Ankit','Verma','103'),
	  (4,'Simran','Kaur',Null),
	  (5,'Aman','Singh',101);

SELECT * FROM employees;

Drop table Department;

CREATE TABLE department(
      department_id int,
	  department_name VARCHAR(50)
);

INSERT INTO department(department_id,department_name)
VALUES(101,'Sales'),
       (102,'Marketing'),
	   (103,'IT'),
	   (104,'HR');

SELECT * FROM department;

SELECT e.employee_id, e.first_name,e.last_name, d.department_name
FROM employees e
INNER JOIN 
department d
ON e.department_id=d.department_id;

SELECT e.employee_id, e.first_name,e.last_name, d.department_name, d.department_id
FROM employees e
LEFT JOIN
department d
ON e.department_id=d.department_id;

SELECT e.employee_id, e.first_name,e.last_name, d.department_name, d.department_id
FROM employees e
RIGHT JOIN
department d
ON e.department_id=d.department_id;

SELECT e.employee_id, e.first_name,e.last_name, d.department_name, d.department_id
FROM employees e
FULL JOIN
department d
ON e.department_id=d.department_id;

SELECT e.employee_id, e.first_name,e.last_name, d.department_name, d.department_id
FROM employees e
CROSS JOIN
department d;


SELECT e1.first_name as employees_name1,
e2.first_name as employees_name2
FROM employees e1
JOIN
employees e2
On e1.department_id=e2.department_id AND e1.employee_id!=e2.employee_id;












