1. 
INSERT INTO 
        employee_salary(First_name, Last_name, Salary, Joining_date, Department)  
VALUES 
    ("Bob", "Kinto", 100000,  '2019-01-20', "Finance"),
    ("Jerry", "Kansxo", 600000,  '2019-01-15', "IT"),
    ("Philip", "Jose", 890000,  '2019-02-05', "Banking"),
    ("John", "Abraham", 200000,  '2019-02-25', "Insurance"),
    ("Michael", "Mathew", 220000,  '2019-02-28', "Finance"),
    ("Alex", "chreketo", 900000,  '2019-05-10', "IT"),
    ("Yohan", "Soso", 1200000,  '2019-06-20', "Banking");

2. CREATE TABLE reward (reward_id INT AUTO_INCREMENT PRIMARY KEY, Employee_ref_id INT, 
Date_of_reward DATE, Amount INT, CONSTRAINT fk_category FOREIGN KEY(Employee_ref_id) 
REFERENCES employee_salary(emp_id)) ON DELETE CASCADE;
INSERT INTO reward(Employee_ref_id, Date_of_reward, Amount)
VALUES
(1, '2019-05-11', 1000),
(2, '2019-05-15', 5000),
(3, '2019-04-22', 2000),
(1, '2019-06-20', 8000);


1. SELECT * FROM employee_salary;
2. select First_name "Employee Name" FROM employee_salary;
3. select LOWER(Last_name) FROM employee_salary;
4. select Department From employee_salary;
5. select substring(First_name, 1, 4) from employee_salary;
6. select locate('h', First_name) from employee_salary WHERE first_name = "John";
7. select trim(First_name) From employee_salary;
8. SELECT CONCAT_WS("_",First_name, Last_name) full_name FROM employee_salary;
9.select Year(Joining_date) year, MOnth(Joining_date) month, Day(Joining_date) days from employee_salary;
10. select * from employee_salary order by First_name;
11. select * from employee_salary order by First_name, Salary DESC; 
12. select * from employee_salary WHERE First_name = "Bob" OR First_name = "Alex";
13. select * from employee_salary WHERE First_name = "Bob";
14. select * from employee_salary where Last_name LIKE 'k%';
15. select * from employee_salary where First_name LIKE '%n';
16. select * from employee_salary where Salary BETWEEN 200000 AND 800000;
17. select * from employee_salary where Joining_date > '2019-03-31';
18. select Joining_date, time(Joining_date) from employee_salary;
19. select DATEDIFF(Date_of_reward, Joining_date) From employee_salary INNER JOIN reward ON employee_salary.emp_id = reward.Employee_ref_id;
20. select CURRENT_DATE(), CURRENT_TIME();
21. SELECT Department, SUM(Salary) Total from employee_salary GROUP BY Department;
22. SELECT Department, SUM(Salary) Total from employee_salary GROUP BY Department order by Department DESC;
23. SELECT Department,count(Department) Num_Emp, SUM(Salary) Total from employee_salary GROUP BY Department order by Total DESC;
24. SELECT Department, AVG(Salary) Average from employee_salary group by department Order by Department;
25. SELECT Department, MIN(Salary) min_salary from employee_salary group by department Order by Department;
26. select count(First_name), year(Joining_date) year_joined, month(Joining_date) month_joined from employee_salary group by year_joined, month_joined;
27. SELECT Department, SUM(Salary) Total FROM employee_salary where Salary > 100000 GROUP BY Department ORDER BY Total DESC;
28. select * from employee_salary inner join reward on employee_salary.emp_id = reward.Employee_ref_id;
29. select (select Salary * 0.2 from  employee_salary where First_name = 'Bob') as bob_salary, (select Salary * 0.1 from employee_salary where First_name = 'Alex') as Alex_salary, (select Salary * .15 from employee_salary where First_name != "Bob" or First_name != "Alex") From employee_salary ;
30. Select First_name, Salary, case  WHEN First_name = 'Bob' THEN Salary * 0.2 When First_name ='Alex' THen Salary * 0.1 Else Salary * 0.15 END AS SalaryPercentage FROM employee_salary;
31. Delete from employee_salary inner join rewards on employee_salary.emp_id = rewards.Employee_ref_id;
32. select First_name, Amount from employee_salary inner join reward on emp_id = Employee_ref_id;
33. update reward inner join employee_salary on reward.Employee_ref_id = employee_salary.emp_id set Amount = 1000  where employee_salary.First_name = "Bob";
34. select First_name, Amount from employee_salary inner join reward on employee_salary.emp_id = reward.Employee_ref_id where reward.Amount > 2000;
35. select First_name, Amount from employee_salary left join reward on employee_salary.emp_id = reward.Employee_ref_id UNIOn select First_name, Amount from employee_salary right join reward on employee_salary.emp_id = reward.Employee_ref_id ;
