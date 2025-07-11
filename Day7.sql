DROP DATABASE IF EXISTS gfg;
CREATE DATABASE gfg;
CREATE TABLE IF NOT EXISTS gfg.employees  (EmployeeID INT PRIMARY KEY, FirstName VARCHAR(50), LastName VARCHAR(50), DepartmentID INT);
CREATE TABLE IF NOT EXISTS gfg.department (DepartmentID INT PRIMARY KEY, DepartmentName VARCHAR(50));
CREATE TABLE IF NOT EXISTS gfg.salaries   (EmployeeID INT PRIMARY KEY, Salary INT);


INSERT INTO gfg.employees (EmployeeID, FirstName, LastName, DepartmentID) VALUES
(1, 'Harshvardhan', 'Singh', 1), (2, 'Ankur', 'Gupta', 2), (3, 'Shivam', 'Kumar', 3),
(4, 'Sakshi', 'Awasthi', 4), (5, 'Nitin', 'Kaur', 5), (6, 'Vinit','Singhal',1),
(7, 'Adarsh','Sharma',4), (8, 'Prakash','Sakari',6),(9,'Puneet','Sharma',7);

INSERT INTO gfg.department (DepartmentID, DepartmentName) VALUES
(1, 'Mentor'), (2, 'Designer'), (3, 'Editor'), (4, 'Onboarding'), (5, 'Project Manager'),(10, 'CEO');

INSERT INTO gfg.salaries (EmployeeID, Salary) VALUES
(1, 50000), (2, 54000), (3, 30000), (4, 60000), (5, 58000),(6,60000),(7,56000);


SELECT * FROM gfg.employees;
SELECT * FROM gfg.department;
SELECT * FROM gfg.salaries;
-- Using left join and taking employees table dominant
USE gfg;
SELECT * FROM employees as e
LEFT JOIN salaries as s
ON e.EmployeeID = s.EmployeeID;

-- Using left join and taking salaries table dominant
SELECT * FROM salaries as e
LEFT JOIN employees as s
ON e.EmployeeID = s.EmployeeID;

SELECT * FROM employees as e
LEFT JOIN department as d
ON e.DepartmentID = d.DepartmentID;

SELECT * FROM employees as e
LEFT JOIN department as d
ON e.DepartmentID = d.DepartmentID
LEFT JOIN salaries as s
ON e.EmployeeID = s.EmployeeID;

-- USING RIGHT JOIN 
SELECT * FROM employees as e
RIGHT JOIN salaries as s
ON e.EmployeeID = s.EmployeeID;

SELECT * FROM  gfg.department as d
RIGHT JOIN gfg.employees as e
on d.DepartmentID=e.DepartmentID;

-- Cross Join | Employees and department
SELECT * fROM gfg.employees CROSS JOIN gfg.department;

-- Cross Join | Employees and department
SELECT * fROM gfg.salaries CROSS JOIN gfg.department;

-- Inner Join | Employees and Salaries

-- Select specifixc column

SELECT t1.EmployeeID, t1.FirstName, t1.LastName, t2.DepartmentName FROM gfg.employees t1
INNER JOIN department t2 ON t1.DepartmentID=t2.DepartmentID
INNER JOIN salaries t3 ON t1.EmployeeID=t3.EmployeeID;

DROP DATABASE IF EXISTS users;
CREATE DATABASE users;

CREATE TABLE IF NOT EXISTS users.users_2021  (UserID INT PRIMARY KEY, Name VARCHAR(50));
CREATE TABLE IF NOT EXISTS users.users_2022  (UserID INT PRIMARY KEY, Name VARCHAR(50));
CREATE TABLE IF NOT EXISTS users.users_2023  (UserID INT PRIMARY KEY, Name VARCHAR(50));

INSERT INTO users.users_2021 (UserID, Name) VALUES (1, 'Harshvardhan'), (2, 'Nitin'), (7, 'Prakash');
INSERT INTO users.users_2022 (UserID, Name) VALUES (1, 'Harshvardhan'), (2, 'Nitin'), (3, 'Charlie'), (4, 'Grace');
INSERT INTO users.users_2023 (UserID, Name) VALUES (1, 'Harshvardhan'), (2, 'Nitin'), (3, 'Charlie'), (4, 'Grace'), (5, 'Henry');

select * from users.users_2021;
select * from users.users_2022;
select * from users.users_2023;

-- Union |shows the bigger data | Removes duplicate
SELECT * FROM users.users_2021 UNION SELECT * FROM users.users_2022 UNION SELECT * FROM users.users_2023;

-- Union |shows the bigger data | Doesn't Remove duplicates
SELECT * FROM users.users_2021 UNION ALL SELECT * FROM users.users_2022 UNION ALL SELECT * FROM users.users_2023;
 
 -- EXCEPT |shows all values of table 1 which is not in table 2 |
 SELECT * FROM users.users_2021 EXCEPT SELECT * FROM users.users_2022 EXCEPT SELECT * FROM users.users_2023;
 
 -- INTERSECT | sHOWS ONLY COMMON DATA
SELECT * FROM users.users_2021 INTERSECT SELECT * FROM users.users_2022 EXCEPT SELECT * FROM users.users_2023;
use sakila;
SELECT * FROM actor;