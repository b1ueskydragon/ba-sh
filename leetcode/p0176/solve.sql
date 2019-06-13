SELECT MAX(Salary) AS SecondHighestSalary FROM Employee WHERE Salary NOT IN (SELECT MAX(Salary) FROM employee);

SELECT IFNULL((SELECT DISTINCT Salary FROM Employee order by Salary desc limit 1, 1), null) AS SecondHighestSalary;

SELECT (SELECT DISTINCT Salary FROM Employee order by Salary desc limit 1, 1) AS SecondHighestSalary;

SELECT MAX(Salary) AS SecondHighestSalary FROM Employee WHERE Salary < (SELECT MAX(Salary) FROM Employee);
