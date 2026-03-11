select * 
from employee;
select name, salary 
from employee ;
select distinct department
from employee;
select * 
from employee
where id <= 5;
select*
from employee 
order by salary desc;
select*
from employee 
where id between 3and 10;
SELECT AVG(Salary) 
FROM Employee;
SELECT MAX(Salary) AS Highest_Salary, MIN(Salary) AS Lowest_Salary
FROM Employee;
SELECT TOP 3 Salary
FROM Employee 
ORDER BY Salary DESC;
SELECT * 
FROM Employee ORDER BY Name ASC;
SELECT * 
FROM Employee
ORDER BY Salary DESC
OFFSET 1 ROWS FETCH NEXT 5 ROWS ONLY;
SELECT SUM(Salary) 
FROM Employee;
SELECT * FROM Employee 
WHERE Salary BETWEEN 40000 AND 60000 
ORDER BY Salary ASC;

