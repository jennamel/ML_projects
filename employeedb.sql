 CREATE DATABASE IF NOT EXISTS EmployeeDb;
USE EmployeeDb;
CREATE TABLE IF NOT EXISTS Employeess (EmployeeID INT PRIMARY KEY,FirstName VARCHAR(255),LastName VARCHAR(255),Department VARCHAR(50),
    Salary DECIMAL(10,2));
INSERT INTO Employeess VALUES (1, 'John', 'Doe', 'IT', 60000);
INSERT INTO Employeess VALUES (2, 'Jane', 'Smith', 'HR', 55000);
INSERT INTO Employeess VALUES (3,'Rose','Priya','MANUFACTURING',70000);
INSERT INTO Employeess VALUES (4,'Liza','Mary','OPERATIONS',80000);
INSERT INTO Employeess VALUES(5,'Santosh','Lal','ADMIN',20000);
INSERT INTO Employeess VALUES(6,'Prema','Prakash','MARKETING',30000);
INSERT INTO Employeess VALUES(7,'Janice','Dora','SALES',40000);
INSERT INTO Employeess VALUES(8,'Janet','Roasrio','PURCHASING',45000);
INSERT INTO Employeess VALUES(9,'Clara','Maria','BUSINESS',80000);
INSERT INTO Employeess VALUES(10,'Rio','Splenta','DEVELOPMENT',40000);
INSERT INTO Employeess VALUES(11,'Liviya','Cramel','PRODUCTION',35000);
INSERT INTO Employeess VALUES(12,'Kia','Roma','EXECUTIVE',26000);
INSERT INTO Employeess VALUES (13,'Lal','San','SUPPLY_CHAIN',50000);
INSERT INTO Employeess VALUES(14,'Dan','Probe','TELESALES',30000);
INSERT INTO Employeess VALUES(15,'Rom','Palo','DISTRIBUTION',70000);
select * from Employeess;
-- Add more records... 
UPDATE Employeess SET Salary = 65000 WHERE EmployeeID = 1;
SELECT * FROM Employeess WHERE Department = 'IT' ORDER BY Salary DESC;
CREATE TABLE IF NOT EXISTS Department (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);
INSERT INTO Department VALUES (1, 'IT');
INSERT INTO Department VALUES (2, 'HR'),(3,'MANUFACTURING'),(4,'OPERATIONS'),
(5,'ADMIN'),(6,'MARKETING'),(7,'SALES'),(8,'PURCHASING');
INSERT INTO Department VALUES (9,'BUSINESS'),(10,'DEVELOPMENT'),
(11,'PRODUCTION'),(12,'EXECUTIVE'),(13,'SUPPLY_CHAIN'),(14,'TELESALES'),(15,'DISTRIBUTION');
SELECT * FROM department;
-- INNER JOIN example

SELECT Employeess.EmployeeID, Employeess.FirstName, Employeess.LastName, Department.DepartmentName
FROM Employeess
INNER JOIN department ON Employeess.department = department.DepartmentName;
SELECT department, AVG(Salary) AS AvgSalary, COUNT(*) AS EmployeeCount
FROM Employeess
GROUP BY department;

SELECT * FROM Employeess WHERE Salary > (SELECT AVG(Salary) FROM Employeess);

SELECT * FROM Employeess WHERE FirstName LIKE 'J%';    

SELECT FirstName FROM Employees WHERE FirstName LIKE '%John%';

SELECT EmployeeID, FirstName FROM Employeess
UNION
SELECT DepartmentID, DepartmentName FROM department;
SELECT *  FROM Employees WHERE EXISTS (SELECT * FROM department WHERE Employees.department = department.DepartmentName);

SELECT AVG(Salary) AS AvgSalary, SUM(Salary) AS TotalSalary FROM Employee;


SELECT * FROM Employeess WHERE EmployeeID IN (2, 8); 

SELECT * FROM Employeess WHERE salary > department = 'IT';

SELECT DISTINCT department FROM Employeess;

SELECT EmployeeID, FirstName FROM Employeess WHERE salary > 60000
UNION
SELECT EmployeeID , FirstName FROM Employeess WHERE department = 'DEVELOPMENT';
 



SELECT COUNT(EmployeeID) AS num_employees FROM Employeess;

SELECT AVG(salary) AS average_salary FROM Employeess;

SELECT MAX(salary) AS highest_salary FROM Employeess;


SELECT * FROM Employeess WHERE salary BETWEEN 60000 AND 75000;






