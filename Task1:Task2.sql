DROP SCHEMA employee CASCADE;
CREATE SCHEMA employee;
CREATE TABLE employee.department (
    dep_id INT NOT NULL,
    dep_name VARCHAR(20),
    dep_location VARCHAR(15)
);
CREATE TABLE employee.employees (
    emp_id INT NOT NULL,
    emp_name VARCHAR(15),
    job_name VARCHAR(10),
    manager_id INT,
    hire_date DATE,
    salary NUMERIC(10, 2),
    commission NUMERIC(7, 2),
    dep_id INT
);
CREATE TABLE employee.salary_grade (
    grade INT,
    min_sal INT,
    max_sal INT
);
INSERT INTO employee.salary_grade (grade, min_sal, max_sal)
VALUES
    (1, 800, 1300),
    (2, 1301, 1500),
    (3, 1501, 2100),
    (4, 2101, 3100),
    (5, 3101, 9999);
 INSERT INTO employee.employees (emp_id, emp_name, job_name, manager_id, hire_date, salary, commission, dep_id)
VALUES
    (68319, 'KAYLING', 'PRESIDENT', NULL, '1991-11-18', 6000.00, NULL, 1001),
    (66928, 'BLAZE', 'MANAGER', 68319, '1991-05-01', 2750.00, NULL, 3001),
    (67832, 'CLARE', 'MANAGER', 68319, '1991-06-09', 2550.00, NULL, 1001),
    (65646, 'JONAS', 'MANAGER', 68319, '1991-04-02', 2957.00, NULL, 2001),
    (64989, 'ADELYN', 'SALESMAN', 66928, '1991-02-20', 1700.00, 400.00, 3001),
    (65271, 'WADE', 'SALESMAN', 66928, '1991-02-22', 1350.00, 600.00, 3001);

INSERT INTO employee.department (dep_id, dep_name, dep_location)
VALUES
    (1001, 'Human Resources', 'New York'),
    (2001, 'Finance', 'Chicago'),
    (3001, 'Sales', 'San Francisco');
select * from employee.department;

SELECT * FROM employee.employees;
SELECT job_name FROM employee.employees;
SELECT DISTINCT job_name FROM employee.employees;
SELECT DISTINCT job_name, emp_name FROM employee.employees;
SELECT * FROM employee.employees
LIMIT 5;
SELECT * FROM employee.employees
LIMIT 10;
SELECT * FROM employee.employees
LIMIT 50;
SELECT * FROM employee.employees
ORDER BY emp_name ASC;
SELECT * FROM employee.employees
ORDER BY emp_name DESC;
SELECT * FROM employee.employees
ORDER BY job_name ASC, emp_name DESC;



