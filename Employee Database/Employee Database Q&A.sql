-- 1. Write a SQL query to return complete information about the employees. 
select * from employees;

-- 2. Write a SQL query to find the salaries of all employees. Return salary. 
select salary from employees;

-- 3. Write a SQL query to find the unique designations of the employees. Return job name. 
select distinct job_name from employees;

-- 4. Write a SQL query to list the employees’ name, increased their salary by 15%, and expressed as number of Dollars. 
select emp_name, concat('$',salary*1.15) as Salary from employees;

-- 5. Write a SQL query to list the employee's name and job name as a format of "Employee & Job". 
select concat(emp_name," & ",job_name) as "Employee & Job" from employees;

-- 6. Write a query in SQL to produce the output of employees as Employee Name(Job Name)
select concat(emp_name," (",job_name,")") as "Employee & Job" from employees;

-- 7. Write a SQL query to find those employees with hire date in the format like February 22, 1991. Return employee ID, employee name, salary, hire date. 
select emp_id, emp_name, salary, date_format(hire_date,'%M %d,%Y') from employees;

-- 8. Write a SQL query to count the number of characters except the spaces for each employee name. Return employee name, length. 
select emp_name, LENGTH(emp_name)-(LENGTH(emp_name)-LENGTH(REPLACE(emp_name," ",""))) as Length from employees;

-- 9. Write a SQL query to find the employee ID, salary, and commission of all the employees. 
select emp_id, salary, commission from employees;

-- 10. Write a SQL query to find the unique department with jobs. Return department ID, Job name. 
select distinct dep_id, job_name from employees natural join department;

-- 11. Write a SQL query to find those employees who do not belong to the department 2001. Return complete information about the employees. 
select * from employees where dep_id<>2001;

-- 12. Write a SQL query to find those employees who joined before 1991. Return complete information about the employees. 
select * from employees where hire_date<"1991-01-01";

-- 13. Write a SQL query to calculate the average salary of employees who work as analysts. Return average salary. 
select avg(salary) from employees where job_name="analyst";

-- 14. Write a SQL query to find the details of the employee ‘BLAZE’. 
select * from employees where emp_name="BLAZE";

-- 15. Write a SQL query to identify employees whose commissions exceed their salaries. Return complete information about the employees.
select * from employees where salary<commission;

-- 16. write a SQL query to identify those employees whose salaries exceed 3000 after receiving a 25% salary increase. Return complete information about the employees. 
select * from employees where salary*1.25>3000;

-- 17. Write a SQL query to find the names of the employees whose length is six. Return employee name. 
select emp_name from employees where length(emp_name)=6;

-- 18. Write a SQL query to find out which employees joined in the month of January. Return complete information about the employees. 
select  * from employees where date_format(hire_date,'%m')='01';

-- 19. Write a SQL query to separate the names of employees and their managers by the string 'works for'. 
select concat(e1.emp_name,' works for ', e2.emp_name) from employees e1 join employees e2 on e1.manager_id=e2.emp_id and e1.manager_id is not null;

-- 20. Write a SQL query to find those employees whose designation is ‘CLERK’. Return complete information about the employees. 
select * from employees where job_name="CLERK";

-- 21. Write a SQL query to identify employees with more than 27 years of experience. Return complete information about the employees. 
SELECT * FROM employee.employees where timestampdiff(YEAR,hire_date,curdate())>27;

-- 22. Write a SQL query to find those employees whose salaries are less than 3500. Return complete information about the employees. 
select * from employees where salary<3500;

-- 23. Write a SQL query to find the employee whose designation is ‘ANALYST’. Return employee name, job name and salary. 
select * from employees where job_name="ANALYST";

-- 24. Write a SQL query to identify those employees who joined the company in 1991. Return complete information about the employees. 
select * from employees where date_format(hire_date,'%Y')='1991';

-- 25. Write a SQL query to find those employees who joined before 1st April 1991. Return employee ID, employee name, hire date and salary. 
select emp_id, emp_name, hire_date, salary from employees where hire_date<'1991-04-01';

-- 26. Write a SQL query identify the employees who do not report to a manager. Return employee name, job name. 
select emp_name, job_name from employees where manager_id is null;

-- 27. Write a SQL query to find the employees who joined on the 1st of May 1991. Return complete information about the employees. 
select * from employees where hire_date='1991-05-01';

-- 28. Write a SQL query to identify the experience of the employees who work under the manager whose ID number is 68319. Return employee ID, employee name, salary, experience. 
select emp_id, emp_name, salary, timestampdiff(year,hire_date,curdate()) as experience from employees where manager_id=68319;

-- 29. Write a SQL query to find out which employees earn more than 100 per day as a salary. Return employee ID, employee name, salary, and experience. 
select emp_id, emp_name, salary, timestampdiff(year,hire_date,curdate()) as experience from employees where salary/30>100;

-- 30. Write a SQL query to identify those employees who retired after 31-Dec-99, completing eight years of service. Return employee name. 
select emp_name from employees where date_add(hire_date, Interval 8 year)>'1999-12-31';

-- 31. Write a SQL query to identify the employees whose salaries are odd. Return complete information about the employees. 
select * from employees where salary mod 2 = 1;

-- 32. Write a SQL query to identify employees whose salaries contain only three digits. Return complete information about the employees. 
select * from employees where salary between 100 and 999;

-- 33. Write a SQL query to find those employees who joined in the month of APRIL. Return complete information about the employees. 
select * from employees where date_format(hire_date,'%M')='April';

-- 34. Write a SQL query to find out which employees joined the company before the 19th of the month. Return complete information about the employees. 
select * from employees where convert(date_format(hire_date,'%d'),decimal)<19;

-- 35. Write a SQL query to find those employees of department id 3001 or 1001 and joined in the year 1991. Return complete information about the employees. 
select * from employees where dep_id in (3001,1001) and date_format(hire_date,'%Y')='1991';

-- 36. Write a SQL query to find the employees who are working for the department ID 1001 or 2001. Return complete information about the employees. 
select * from employees where dep_id in (2001,1001);

-- 37. Write a SQL query to find those employees whose designation is ‘CLERK’ and work in the department ID 2001. Return complete information about the employees. 
select * from employees where job_name='CLERK' and dep_id=2001;

-- 38 Write a query in SQL to find those employees where - 
		-- 1. The employees receive some commission which should not be more than the salary and annual salary including commission is below 34000. 
		-- 2. Designation is ‘SALESMAN’ and working in the department ‘3001’. Return employee ID, employee name, salary and job name. 
select emp_id, emp_name, salary, job_name from employees where commission<salary and salary*12+12*commission<34000 and job_name='SALESMAN' and dep_id=3001;

-- 39. Write a SQL query to find those employees who are either CLERK or MANAGER. Return complete information about the employees. 
select * from employees where job_name in ('CLERK','MANAGER');

-- 40. Write a SQL query to identify those employees who joined in any month other than February. Return complete information about the employees. 
select * from employees where date_format(hire_date,'%M')<>'February';

-- 41. Write a SQL query to find those employees who joined in the year 1991. Return complete information about the employees. 
select * from employees where date_format(hire_date,'%Y')='1991';

-- 42. Write a SQL query to identify the employees who joined the company in June 1991. Return complete information about the employees. 
select * from employees where date_format(hire_date,'%Y')='1991' and date_format(hire_date,'%M')='June';

-- 43. Write a SQL query to search for all employees with an annual salary between 24000 and 50000 (Begin and end values are included.). Return complete information about the employees. 
select * from employees where salary*12 between 24000 and 50000;

-- 44. Write a SQL query to identify all employees who joined the company on 1st May, 20th February, and 3rd December 1991. Return complete information about the employees. 
select * from employees where hire_date in ('1991-02-20','1991-05-01','1991-12-03');

-- 45. Write a SQL query to find out which employees are working under the managers 63679, 68319, 66564, or 69000. Return complete information about the employees. 
select * from employees where manager_id in (63679, 68319, 66564,69000);

-- 46. Write a SQL query to find which employees joined the company after the month of June in 1991 and within this year. Return complete information about the employees. 
select * from employees where hire_date>='1991-07-01' and hire_date<='1991-12-31';

-- 47. Write a SQL query to find those employees who joined in 90's. Return complete information about the employees. 
select * from employees where date_format(hire_date,'%y')='90';

-- 48. Write a SQL query to find those managers who are in the department 1001 or 2001. Return complete information about the employees. 
select * from employees where job_name='MANAGER' and dep_id in (1001,2001);

-- 49. Write a SQL query to identify employees who joined in the month of FEBRUARY with a salary range of 1001 to 2000 (Begin and end values are included.). Return complete information about the employees. 
select * from employees where date_format(hire_date,'%M')='FEBRUARY' and salary between 1001 and 2000;

-- 50. Write a SQL query to find those employees who joined before or after the year 1991. Return complete information about the employees. 
select * from employees where hire_date<'1991-01-01' or hire_date>'1991-12-31';

-- 51. Write a SQL query to find employees along with their department details. Return employee ID, employee name, job name, manager ID, hire date, salary, commission, department ID, and department name.
select emp_id, emp_name, job_name, manager_id, hire_date, salary, commission, dep_id, dep_name from employees natural join department;

-- 52. Write a SQL query to identify those employees who earn 60000 or more per year or do not work as ANALYST. Return employee name, job name, (12*salary) as Annual Salary, department ID, and grade. 
select emp_name, job_name, 12*salary 'Annual Salary', dep_id, grade from employees join salary_grade on (12*salary>60000 or job_name<>'ANALYST') and salary>=min_salary and salary<=max_salary;

-- 53. Write a SQL query to identify employees whose salaries are higher than their managers' salaries. Return employee name, job name, manager ID, salary, manager name, manager's salary. 
 select e1.emp_name, e1.job_name, e1.manager_id, e1.salary, e2.emp_name as manager_name, e2.salary as managers_salary from employees e1 join employees e2 on e1.manager_id=e2.emp_id and e1.salary>e2.salary;
 
 -- 54. Write a SQL query to find those employees whose salary is between 2000 and 5000 (Begin and end values are included.) and location is PERTH. Return employee name, department ID, salary, and commission. 
 select emp_name, employees.dep_id, salary, commission from employees join department on salary between 2000 and 5000 and dep_location='PERTH' and employees.dep_id=department.dep_id;
 
 -- 55. Write a SQL query to find the employees whose department ID is 1001 or 3001 and whose salary grade is not 4. They joined the company before 1992-12-31. Return grade, employee name. 
 select emp_name, grade from employees join salary_grade on dep_id in (1001,3001) and hire_date<'1992-12-31' and salary>=min_salary and salary<=max_salary and grade<>4;
 
 -- 56. Write a SQL query to find those employees whose manager name is JONAS. Return employee id, employee name, job name, manager ID, hire date, salary, department ID, manager name. 
 select e1.emp_id, e1.emp_name, e1.job_name, e1.manager_id, e1.hire_date, e1.dep_id, e2.emp_name as manager_name from employees e1 join employees e2 on e2.emp_name='JONAS' and e1.manager_id=e2.emp_id;
 
 -- 57. Write a SQL query to find the name and salary of the employee FRANK.
 select emp_name, salary from employees where emp_name='FRANK';
 
 -- 58. Write a SQL query to search for employees who are working either as a MANAGER or an ANALYST with a salary between 2000 and 5000 (Begin and end values are included.) without commissions (null). Return complete information about the employees 
 select * from employees where job_name in ('MANAGER','ANALYST') and salary between 2000 and 5000 and commission is null;
 
 -- 59. Write a SQL query to search for employees working in PERTH or MELBOURNE and their achieved experience is more than 10 years. Return employee ID, employee name, department ID, salary, and department location.
select emp_id, emp_name, dep_ID, salary, dep_location from employees natural join department where dep_location in ('PERTH','MELBOURNE') and timestampdiff(YEAR,hire_date,curdate())>10;

-- 60. Write a SQL query to find the employees who joined in 1991 and whose department location is SYDNEY or MELBOURNE with a salary range of 2000 to 5000 (Begin and end values are included.). Return employee ID, employee name, department ID, salary, and department location.
select emp_ID, emp_name, employees.dep_ID, salary, dep_location from employees join department on date_format(hire_date,'%Y')='1991' and salary between 2000 and 5000 and dep_location in ('SYDNEY','MELBOURNE') and department.dep_id=employees.dep_id; 

-- 61. Write a SQL query to find the employees of MARKETING department come from MELBOURNE or PERTH, are in grades 3 ,4, and 5 and have at least 25 years of experience. Return department ID, employee ID, employee name, salary, department name, department location and grade.
select d.dep_ID, e.emp_ID, e.emp_name, e.salary, d.dep_name, d.dep_location, g.grade from employees e join department d on timestampdiff(YEAR,hire_date,curdate())>25 and d.dep_name='MARKETING' and d.dep_location in ('MELBOURNE','PERTH') and e.dep_id=d.dep_id join salary_grade g on e.salary>=g.min_salary and e.salary<=g.max_salary and g.grade in (3,4,5);

-- 62 Write a SQL query to find those employees who are senior to their manager in terms of hiring date. Return complete information about the employees.
select e1.emp_id, e1.emp_name, e1.job_name, e1.hire_date, e1.manager_id, e1.salary, e1.commission from employees e1 join employees e2 on e1.manager_id=e2.emp_id and e1.hire_date<e2.hire_date;

-- 63 Write a SQL query to determine which employees have a grade of 4 and a salary between the minimum and maximum. Return all information of each employees and their grade and salary related details.
select * from employees join salary_grade on salary>=min_salary and salary<=max_salary and grade=4;

-- 64. Write a SQL query to find those employees who joined after 1991, excluding MARKER or ADELYN and in the departments PRODUCTION or AUDIT. Return employee name.
select emp_name from employees natural join department where hire_date>'1991-12-31' and emp_name not in ('MARKER','ADELYN') and dep_name in ('PRODUCTION','AUDIT');

-- 65. Write a SQL query to find the employees and their salaries. Sort the result-set in ascending order by salaries. Return complete information about the employees. 
select * from employees order by salary;

-- 66. Write a SQL query to list employees in ascending order on department ID and descending order on jobs. Return complete information about the employees. 
select * from employees order by dep_id, job_name desc;

-- 67. Write a SQL query to sort the unique jobs in descending order. Return job name. 
select distinct job_name from employees order by job_name desc;

-- 68. Write a SQL query to rank the employees according to their annual salary in ascending order. Return employee ID, employee name, monthly salary, salary/30 as Daily_Salary, and 12*salary as Anual_Salary.
select emp_id, emp_name, salary as 'monthly salary', salary/30 as 'Daily_Salary', 12*salary as 'Anual_Salary' from employees order by salary;

-- 69. Write a SQL query to find those employees who are either 'CLERK' or 'ANALYST’. Sort the result set in descending order on job_name. Return complete information about the employees. 
select * from employees where job_name in ('CLERK','ANALYST') order by job_name desc;

-- 70. Write a SQL query to find the department location of employee ‘CLARE’. Return department location.
select dep_location from employees join department on employees.dep_id=department.dep_id and employees.emp_name='CLARE';

-- 71. Write a SQL query to find those employees who joined on 1-MAY-91, or 3-DEC-91, or 19-JAN-90. Sort the result-set in ascending order by hire date. Return complete information about the employees.
select * from employees where hire_date in ('1991-05-01','1991-12-03','1990-01-19') order by hire_date;

-- 72. Write a SQL query to find those employees who earn less than 1000. Sort the result-set in ascending order by salary. Return complete information about the employees. 
select * from employees where salary < 1000 order by salary;

-- 73. Write a SQL query to list the employees in ascending order based on salary. Return complete information about the employees. 
select * from employees order by salary;

-- 74. Write a SQL query to list the employees in the ascending order by job title and in descending order by employee ID. Return complete information about the employees. 
select * from employees order by job_name, emp_id desc;

-- 75. Write a SQL query to list the unique jobs of department 2001 and 3001 in descending order. Return job name. 
select distinct job_name from employees where dep_id in (2001,3001);

-- 76. Write a SQL query to list all the employees except the PRESIDENT and the MANAGER in ascending order of salaries. Return complete information about the employees. 
 select * from employees where job_name not in ('PRESIDENT','MANAGER') order by salary;
 
 -- 77. Write a SQL query to find the employees whose annual salary is less than $25,000 per year. Sort the result set in ascending order of the salary. Return complete information about the employees. 
 select * from employees where 12*salary<25000 order by salary;
 
 -- 78. Write a SQL query to list the employees who works as a SALESMAN. Sort the result set in ascending order of annual salary. Return employee id, name, annual salary, daily salary of all the employees. 
 select emp_id, emp_name, 12*salary as 'Annual salary', salary/30 as 'Daily salary' from employees where job_name='SALESMAN' order by salary;
 
 -- 79. Write a SQL query to list the employee ID, name, hire date, current date and experience of the employees in ascending order on their experiences. 
 select emp_id, emp_name,hire_date, curdate() as 'Cuurent Date', timestampdiff(year,hire_date,curdate()) as experience from employees order by hire_date desc;
 
 -- 80. Write a SQL query to list the employees in ascending order of designations of those joined after the second half of 1991. 
 select * from employees where hire_date between '1991-07-01' and '1991-12-31' order by job_name;

-- 81. Write a SQL query to find the location of all the employees working in the FINANCE or AUDIT department. Sort the result-set in ascending order by department ID. Return complete information about the employees. 
select * from employees natural join department where dep_name in ('FINANCE','AUDIT') order by dep_id;

-- 82. Write a SQL query to find the employees along with grades in ascending order. Return complete information about the employees. 
select emp_id, emp_name, job_name, manager_id, hire_date, salary, commission, grade from employees join salary_grade on salary between min_salary and max_salary order by grade;

-- 83. Write a SQL query to find the employees according to the department in ascending order of department id. Return employee name, job name, department, salary, and grade.  
select emp_name, job_name, dep_name, grade from employees natural join department join salary_grade on salary between min_salary and max_salary order by dep_id;

-- 84. Write a SQL query to select all employees of all job types except CLERK and sort the results in descending order by salary. Return employee name, job name, salary, grade and department name. 
select emp_name, job_name, dep_name, grade from employees natural join department join salary_grade on salary between min_salary and max_salary where job_name <> 'CLERK';

-- 85. Write a SQL query to find those employees who work in the department 1001 or 2001. Return employee ID, name, salary, department, grade, experience, and annual salary. 
select emp_id, emp_name, salary, dep_name, grade, timestampdiff(year,hire_date,curdate()) as experience, 12*salary as 'annual salary' from employees natural join department join salary_grade on salary between min_salary and max_salary where dep_id in (1001,2001);

-- 86. Write a SQL query to list the details of the employees along with the details of their departments. 
select * from employees natural join department;

-- 87. Write a SQL query to list the employees who are senior to their MANAGERS. Return complete information about the employees. 
select e1.emp_id, e1.emp_name, e1.job_name, e1.hire_date, e1.manager_id, e1.salary, e1.commission from employees e1 join employees e2 on e1.manager_id=e2.emp_id and e1.hire_date<e2.hire_date;

-- 88. Write a SQL query to find those employees who work in the department 1001. Sort the result-set in ascending order by salary. Return employee ID, employee name, salary and department ID. 
select emp_id, emp_name, salary, dep_id from employees where dep_id=1001 order by salary;

-- 89. Write a SQL query to find the highest salary. Return highest salary. 
select max(salary) as 'Highest Salary' from employees;

-- 90. Write a SQL query to calculate the average salary and average total remuneration (salary and commission) for each type of job. Return job name, average salary and average total remuneration. 
select job_name, avg(salary) as 'average salary', avg(salary+commission) as 'average total remuneration' from employees group by job_name;

-- 91. Write a SQL query to calculate the total annual salary distributed across each job in 1991. Return job name, total annual salary. 
select job_name, sum(12*salary) as 'total annual salary' from employees where date_format(hire_date,'%Y')='1991' group by job_name;

-- 92. Write a SQL query to list the employee id, name, department id, location of all the employees. 
select emp_id, emp_name, dep_id, dep_location from employees natural join department;

-- 93. Write a SQL query to find those employees who work in the department ID 1001 or 2001. Return employee ID, employee name, department ID, department location, and department name. 
select emp_id, emp_name, dep_id, dep_location, dep_name from employees natural join department where dep_id in (1001,2001);

-- 94. Write a SQL query to find those employees whose salary is in the range of minimum and maximum salary (Begin and end values are included.). Return employee ID, name, salary and grade. 
select emp_id, emp_name, salary, grade from employees join salary_grade on salary between min_salary and max_salary;

-- 95. Write a SQL query to create a list of the managers and the number of employees they supervise. Sort the result set in ascending order on manager. Return manager ID and number of employees under them. 
select manager_id, count(emp_id) as 'number of employees under them' from employees where manager_id is not null group by manager_id order by manager_id;

-- 96. Write a SQL query to count the number of employees in each designation of a department. Return department id, job name and number of employees. 
select dep_id, job_name, count(emp_id) as 'number of employees' from employees group by dep_id, job_name;

-- 97. Write a SQL query to identify the departments in which at least two employees are employed. Return department id, number of employees. 
select dep_id, count(emp_id) as 'number of employees' from employees group by dep_id having count(emp_id)>=2;

-- 98. Write a SQL query to list the grade, number of employees, and maximum salary of each grade. 
select grade, max(salary), count(emp_id) from employees join salary_grade on salary between min_salary and max_salary group by grade;

-- 99. Write a SQL query to identify departments with at least two SALESMEN in each grade. Return department name, grade and number of employees.
select dep_name, grade, count(emp_id) as 'number of employees' from employees natural join department join salary_grade on salary between min_salary and max_salary where job_name='SALESMAN' group by dep_name, grade having count(emp_id)>=2;

-- 100. Write a SQL query to identify departments with fewer than four employees. Return department ID, number of employees. 
select dep_id, count(emp_id) as 'Number of employees' from employees group by dep_id having count(emp_id)<4;

-- 101. Write a SQL query to find which departments have at least two employees. Return department name, number of employees. 
select dep_name, count(emp_id) as 'Number of employees' from employees natural join department group by dep_name having count(emp_id)>=2;

-- 102. Write a SQL query to check whether the employees ID are unique or not. Return employee id, number of employees. 
select emp_id, count(*) as 'Number of employees'  from employees group by emp_id;

-- 103. Write a SQL query to find number of employees and average salary. Group the result set on department id and job name. Return number of employees, average salary, department ID, and job name. 
select dep_id, job_name, count(emp_id) as 'number of employees', avg(salary) as 'average salary' from employees group by dep_id,job_name;

-- 104. Write a SQL query to identify those employees whose names begin with 'A' and are six characters long. Return employee name. 
select emp_name from employees where emp_name like 'A%' and length(emp_name)=6;

-- 105. Write a SQL query to find those employees whose name is six characters in length and the third character must be 'R'. Return complete information about the employees. 
select * from employees where emp_name like '__R%' and length(emp_name)=6;

-- 106. Write a SQL query to find those employees whose name is six characters in length, starting with 'A' and ending with 'N'. Return number of employees. 
select count(emp_id) as 'number of employees' from employees where emp_name like 'A%N' and length(emp_name)=6;

-- 107. Write a SQL query to find those employees who joined in the month of where the second letter is 'a'. Return number of employees. 
 select count(emp_id) as 'number of employees' from employees where date_format(hire_date,'%M') like '_a%';
 
-- 108. Write a SQL query to find those employees whose names contain the character set 'AR' together. Return complete information about the employees. 
select * from employees where emp_name like '%AR%';

-- 109. Write a SQL query to find those employees who joined in 90's. Return complete information about the employees. 
 select * from employees where hire_date between '1990-01-01' and '1999-12-31';
 
-- 110. Write a SQL query to find those employees whose ID not start with the digit 68. Return employee ID, employee name. 
select emp_id, emp_name from employees where emp_id div 1000 <> 68;

-- 111. Write a SQL query to find those employees whose names contain the letter 'A’. Return complete information about the employees. 
select * from employees where emp_name like '%A%';

-- 112. Write a SQL query to find those employees whose name ends with 'S' and six characters long. Return complete information about the employees. 
select * from employees where emp_name like '%s' and length(emp_name)=6;

-- 113. Write a SQL query to find those employees who joined in any month, but the month name contain the character ‘A’. Return complete information about the employees. 
select * from employees where date_format(hire_date,'%M') like '%A%';

-- 114. Write a SQL query to find those employees who joined in any month, but the name of the month contain the character ‘A’ in second position. Return complete information about the employees. 
 select * from employees where date_format(hire_date,'%M') like '_A%';
 
-- 115. Write a SQL query to find the employees who manage other employees. Return complete information about the managers.
select * from employees where emp_id in (select distinct manager_id from employees where manager_id is not null);
 
-- 116. Write a SQL query to compute the experience of all the employees who manage other employees. Return employee ID, employee name, job name, joining date, and experience.
select emp_id, emp_name, job_name, hire_date, timestampdiff(year,hire_date,curdate()) as experience from employees where emp_id in (select distinct manager_id from employees where manager_id is not null);
 
-- 117. Write a SQL query to find those employees who work as 'MANAGERS' and 'ANALYST' and working in ‘SYDNEY’ or ‘PERTH’ with an experience more than 5 years without receiving the commission. Sort the result-set in ascending order by department location. Return employee ID, employee name, salary, and department name.
 select e.emp_id, e.emp_name, e.salary, d.dep_name from employees e natural join department d where e.job_name in ('MANAGER','ANALYST') and d.dep_location in ('Sydney','Perth') and timestampdiff(year,e.hire_date,curdate())>5 and e.commission is null order by d.dep_location;
 
-- 118. Write a SQL query to find those employees work at SYDNEY or working in the FINANCE department with an annual salary above 28000, but the monthly salary should not be 3000 or 2800 and who do not work as a MANAGER and whose ID contain a digit of '3' or '7' in 3rd position. Sort the result-set in ascending order by department ID and descending order by job name. Return employee ID, employee name, salary, department name, department location, department ID, and job name.
select * from employees natural join department where (dep_location='SYDNEY' or dep_name='FINANCE') and 12*salary>28000 and salary not in (3000,2800) and job_name <> 'MANAGER' and (convert(emp_id,char(5)) like '__3%' or convert(emp_id,char(5)) like '__7%') order by dep_id, job_name desc;

-- 119. Write a SQL query to find the employees of grade 2 and 3.Return all the information of employees and salary details.
select * from employees e join salary_grade sg on sg.grade in (2,3) and e.salary between sg.min_salary and sg.max_salary;

-- 120. Write a SQL query to find those employees of grade 4 or 5 and who work as ANALYST or MANAGER. Return complete information about the employees.
select * from employees e join salary_grade sg on sg.grade in (4,5) and e.salary between sg.min_salary and sg.max_salary and e.job_name in ('MANAGER','ANALYST');

-- 121. Write a SQL query to find those employees whose salary is more than the salary of JONAS. Return complete information about the employees.
select * from employees where salary > (select salary from employees where emp_name='JONAS');

-- 122. Write a SQL query to find those employees who work as same designation of FRANK. Return complete information about the employees.
select * from employees where job_name = (select job_name from employees where emp_name='FRANK');

-- 123. Write a SQL query to find those employees who are senior to ADELYN. Return complete information about the employees.
select * from employees where hire_date < (select hire_date from employees where emp_name='ADELYN');

-- 124. Write a SQL query to find those employees of department ID 2001 and whose designation is same as of employees of department ID 1001. Return complete information about the employees.
select * from employees where dep_id=2001 and job_name in (select job_name from employees where dep_id=1001);

-- 125. Write a SQL query to find those employees whose salary is the same as the salary of FRANK or SANDRINE. Sort the result-set in descending order by salary. Return complete information about the employees.
select * from employees where salary in (select salary from employees where emp_name in ('FRANK','SANDRINE')) order by salary desc;

-- 126. Write a SQL query to find those employees whose designation are the same as the designation of MARKER or salary is more than the salary of ADELYN. Return complete information about the employees.
select * from employees where job_name=(select job_name from employees where emp_name='MARKER') or salary>(select salary from employees where emp_name='ADELYN');

-- 127. Write a SQL query to find those employees whose salary is more than the total remuneration (salary + commission) of the designation SALESMAN. Return complete information about the employees.
select * from employees where salary > all ( select salary+ifnull(commission,0) from employees where job_name='SALESMAN');

-- 128. Write a SQL query to find those employees who are senior to BLAZE and working at PERTH or BRISBANE. Return complete information about the employees.
select * from employees where hire_date < (select hire_date from employees where emp_name='BLAZE') and dep_id in (select dep_id from department where dep_location in ('PERTH','BRISBANE'));

-- 129. Write a SQL query to find those employees of grade 3 and 4 and work in the department of FINANCE or AUDIT and whose salary is more than the salary of ADELYN and experience is more than FRANK. Return complete information about the employees.
select * from employees join salary_grade on salary between min_salary and max_salary where salary > (select salary from employees where emp_name='ADELYN') and hire_date < (select hire_date from employees where emp_name='FRANK') and dep_id in (select dep_id from department where dep_name in ('FINANCE','AUDIT')) and grade in (3,4);

-- 130. Write a SQL query to find those employees whose designation is same as the designation of SANDRINE or ADELYN. Return complete information about the employees.
select * from employees where job_name in (select job_name from employees where emp_name in ('SANDRINE','ADELYN'));

-- 131. Write a SQL query to list any job of department ID 1001 which are not found in department ID 2001. Return job name.
select job_name from employees where dep_id=1001 and job_name not in (select job_name from employees where dep_id=2001);

-- 132. Write a SQL query to find the highest paid employee. Return complete information about the employees.
select * from employees where salary = (select max(salary) from employees);

-- 133. Write a SQL query to find the highest paid employees in the department MARKETING. Return complete information about the employees.
select * from employees where salary = (select max(salary) from employees where dep_id=(select dep_id from department where dep_name='MARKETING'));

-- 134. Write a SQL query to find the employees of grade 3  and location at PERTH. Return employee ID, employee name, job name, hire date, and salary.
select emp_id, emp_name, job_name, hire_date, salary from employees join salary_grade on salary between min_salary and max_salary and grade=3 join department on employees.dep_id=department.dep_id and dep_location='PERTH';

-- 135. Write a SQL query to find those employees who are senior to the employee who work under KAYLING. Return complete information about the employees.
select * from employees where hire_date < all (select hire_date from employees where manager_id=(select emp_id from employees where emp_name='KAYLING'));

-- 136. Write a SQL query to find those employees of grade 3 to 5 and location at SYDNEY. The employees are not in PRESIDENT designated and salary is more than the highest paid employee of PERTH where no MANAGER and SALESMAN are working under KAYLING. Return complete information about the employees.
select max(salary) from employees where manager_id <> (select emp_id from employees where emp_name='KAYLING') and job_name in ('MANAGER','SALESMAN') and dep_id in (select dep_id from department where dep_location='PERTH');

-- 137. Write a SQL query to find those employees who are senior employees as of year 1991 (Consider only 1991). Return complete information about the employees.
select * from employees where hire_date in (select min(hire_date) from employees where date_format(hire_date,'%Y')='1991');

-- 138. Write a SQL query to find those employees who joined in 1991 in a designation same as the most senior person of the year 1991. Return complete information about the employees.
select * from employees where date_format(hire_date,'%Y')='1991' and job_name in (select job_name from employees where hire_date in (select min(hire_date) from employees where date_format(hire_date,'%Y')='1991'));

-- 139. Write a SQL query to find the most senior employee of grade 4 or 5, work under KAYLING. Return complete information about the employees.
select emp_id, emp_name, job_name, manager_id, hire_date, salary, commission from employees join salary_grade on salary between min_salary and max_salary and grade in (4,5) where manager_id = (select emp_id from employees where emp_name='KAYLING') and hire_date = (select min(hire_date) from employees join salary_grade on salary between min_salary and max_salary and grade in (4,5) where manager_id = (select emp_id from employees where emp_name='KAYLING'));

-- 140. Write a SQL query to compute the total salary of the designation MANAGER. Return total salary.
select sum(salary) from employees where job_name='Manager';

-- 141. Write a SQL query to compute the total salary of employees of grade 3. Return total salary.
select sum(salary) from employees join salary_grade on salary between min_salary and max_salary and grade=3;

-- 142. Write a SQL query to find those employees of department 1001 and whose salary is more than the average salary of employees in department 2001. Return complete information about the employees.
select * from employees where dep_id=1001 and salary>(select avg(salary) from employees where dep_id=2001);

-- 143. Write a SQL query to find those departments where maximum number of employees work. Return department ID, department name, location and number of employees.
select d.dep_id, d.dep_name, d.dep_location, count(e.emp_id) as 'number of employees' from employees e natural join department d group by dep_id having count(emp_id) = (select max(employee_count) from (select count(emp_id) as employee_count from employees group by dep_id) as temp);

-- 144. Write a SQL query to find those employees whose manager is JONAS. Return complete information about the employees.
select e1.emp_id, e1.emp_name, e1.hire_date, e1.job_name, e1.manager_id, e1.salary, e1.commission from employees e1 join employees e2 on e1.manager_id=e2.emp_id and e2.emp_name='Jonas';

-- 145. Write a SQL query to find those employees who are not working in the department MARKETING. Return complete information about the employees.
select e1.emp_id, e1.emp_name, e1.hire_date, e1.job_name, e1.manager_id, e1.salary, e1.commission, e1.dep_id from employees e1 join department d on e1.dep_id=d.dep_id and d.dep_name<>'MARKETING';

-- 146. Write a SQL query to find those employees who are managing other employees. Return employee name, job name, department name, and location.
select e1.emp_name, e1.job_name, d.dep_name, d.dep_location from employees e1 natural join department d where e1.emp_id in (select distinct manager_id from employees where manager_id is not null);

-- 147. Write a SQL query to find those employees who receive the highest salary of each department. Return employee name and department ID.
select emp_name, dep_id from employees where (dep_id,salary) in (select dep_id, max(salary) from employees group by dep_id);

-- 148. Write a SQL query to find those employees whose salary is equal or more to the average of maximum and minimum salary. Return complete information about the employees.
select * from employees where salary >= (select (max(salary)+min(salary))/2 from employees);

-- 149. Write a SQL query to find those managers whose salary is more than the average salary of his employees. Return complete information about the employees.
select distinct e2.emp_id, e2.emp_name, e2.job_name, e2.manager_id, e2.hire_date, e2.salary, e2.commission, e2.dep_id from employees e1 join employees e2 on e1.manager_id=e2.emp_id where e2.salary > (select avg(salary) from employees e3 where e3.manager_id=e2.emp_id);

-- 150. Write a SQL query to find those employees whose salary is less than the salary of his manager but more than the salary of any other manager. Return complete information about the employees.
select e1.emp_id, e1.emp_name, e1.job_name, e1.manager_id, e1.hire_date, e1.salary, e1.commission, e1.dep_id from employees e1 join employees e2 on e1.manager_id=e2.emp_id where e1.salary<e2.salary and e1.salary > any (select salary from employees where emp_id in (select distinct manager_id from employees where manager_id is not null));

-- 151. Write a SQL query to compute department wise average salary of employees. Return employee name, average salary, department ID.
select emp_name, (select avg(e2.salary) from employees e2 where e2.dep_id=e1.dep_id) as 'Average salary of department', dep_id from employees e1;

-- 152. Write a SQL query to find five lowest paid workers. Return complete information about the employees.
select * from employees order by salary limit 5;

-- 153. Write a SQL query to find those managers who are not working under the PRESIDENT. Return complete information about the employees. 
select e2.emp_id, e2.emp_name, e2.job_name, e2.manager_id, e2.hire_date, e2.salary, e2.commission, e2.dep_id from employees e1 join employees e2 on e1.manager_id=e2.emp_id join employees e3 on e2.manager_id=e3.emp_id and e3.job_name<>'PRESIDENT';

-- 154. Write a SQL query to find those departments where the number of employees is equal to the number of characters in the department name. Return complete information about the department.
select dep_id, dep_name, dep_location from employees natural join department group by dep_id,dep_name,dep_location having count(emp_id)=length(dep_name);

-- 155. Write a SQL query to find those departments where the highest number of employees works. Return department name.
select d.dep_name from employees e natural join department d group by dep_id having count(emp_id) = (select max(employee_count) from (select count(emp_id) as employee_count from employees group by dep_id) as temp);

-- 156. Write a SQL query to find those employees who joined in the company on the same date. Return complete information about the employees.
select distinct e1.emp_id, e1.emp_name, e1.job_name, e1.manager_id, e1.hire_date, e1.salary, e1.commission, e1.dep_id from employees e1, employees e2 where e1.emp_id<>e2.emp_id and e1.hire_date=e2.hire_date;

-- 157. Write a SQL query to find those departments where more than average number of employees works. Return department name.
select d.dep_name from employees e natural join department d group by dep_id having count(emp_id) > (select avg(employee_count) from (select count(emp_id) as employee_count from employees group by dep_id) as temp);

-- 158. Write a SQL query to find those managers who handle maximum number of employees. Return managers name, number of employees.
select (select e2.emp_name from employees e2 where e2.emp_id=e1.manager_id) as manager_name, count(emp_id) from employees e1 group by manager_id having count(emp_id) = (select max(employee_count) from (select count(emp_id) as employee_count from employees group by manager_id) as temp);

-- 159. Write a SQL query to find those managers who receive less salary then the employees work under them. Return complete information about the employees.
select distinct e2.emp_id, e2.emp_name, e2.job_name, e2.manager_id, e2.hire_date, e2.salary, e2.commission, e2.dep_id  from employees e1 join employees e2 on e1.manager_id=e2.emp_id and e1.salary>e2.salary;

-- 160. Write a SQL query to find those employees who are sub-ordinates of BLAZE. Return complete information about the employees.
select * from employees where manager_id=(select emp_id from employees where emp_name='BLAZE');

-- 161. Write a SQL query to list the name of the employees for their manager JONAS and the name of the manager of JONAS.
select e1.emp_name, e2.emp_name, e3.emp_name from employees e1 join employees e2 on e1.manager_id=e2.emp_id and e2.emp_name='JONAS' join employees e3 on e2.manager_id=e3.emp_id;

-- 162. Write a SQL query to find those employees who receive minimum salary for a designation. Sort the result-set in ascending order by salary. Return complete information about the employees.
select e1.emp_id, e1.emp_name, e1.job_name, e1.manager_id, e1.hire_date, e1.salary, e1.commission, e1.dep_id from employees e1 where e1.salary = (select min(salary) from employees e2 where e2.job_name=e1.job_name) order by e1.salary;

-- 163. Write a SQL query to find those employees who receive maximum salary for a designation. Sort the result-set in descending order by salary. Return complete information about the employees.
select e1.emp_id, e1.emp_name, e1.job_name, e1.manager_id, e1.hire_date, e1.salary, e1.commission, e1.dep_id from employees e1 where e1.salary = (select max(salary) from employees e2 where e2.job_name=e1.job_name) order by e1.salary desc;

-- 164. Write a SQL query to find recently hired employees of every department. Sort the result-set in descending order by hire date. Return complete information about the employees.
select e1.emp_id, e1.emp_name, e1.job_name, e1.manager_id, e1.hire_date, e1.salary, e1.commission, e1.dep_id from employees e1 where e1.hire_date = (select max(hire_date) from employees e2 where e2.dep_id=e1.dep_id) order by e1.hire_date desc;

-- 165. Write a SQL query to find those employees who receive a salary higher than the average salary of their department. Sort the result-set in ascending order by department ID. Return employee name, salary, and department ID.
select e1.emp_name, e1.salary, e1.dep_id from employees e1 where e1.salary > (select avg(salary) from employees e2 where e2.dep_id=e1.dep_id) order by e1.dep_id;

-- 166. Write a SQL query to find those employees who earn a commission and receive maximum salary. Return complete information about the employees.
select * from employees where commission is not null and salary = (select max(salary) from employees where commission is not null);

-- 167. Write a SQL query to find those employees who do not work in the department 1001 but work in the same designation and salary as the employees in department 3001. Return employee name, job name and salary.
select emp_name, job_name, salary from employees where dep_id<>1001 and job_name in (select job_name from employees where dep_id=3001) and salary in (select salary from employees where dep_id=3001);

-- 168. Write a SQL query to find those employees who get a commission percent and works as a SALESMAN and earn maximum net salary. Return department ID, name, designation, salary, and net salary (salary+ commission).
select * from employees where commission is not null and job_name='SALESMAN' and salary+commission = (select max(salary+commission) from employees where commission is not null and job_name='SALESMAN');

-- 169. Write a SQL query to find those employees who gets a commission and earn the second highest net salary (salary + commission). Return department id, employee name, designation, salary, and net salary.
select * from employees where commission is not null and salary+commission = (select max(salary+commission) from employees where commission is not null and salary+commission < (select max(salary+commission) from employees where commission is not null));

-- 170. Write a SQL query to find those departments where the average salary is less than the averages for all departments. Return department ID, average salary.
select dep_id,avg(salary) from employees group by dep_id having avg(salary) < (select avg(salary) from employees);

-- 171. Write a SQL query to find the unique departments where at least one employee is working. Return complete information about the department.
select distinct d.dep_id, d.dep_name, d.dep_location from employees e natural join department d;

-- 172. Write a SQL query to list the details of the employees working at PERTH.
select e.emp_id, e.emp_name, e.job_name, e.manager_id, e.hire_date, e.salary, e.commission, e.dep_id from employees e join department d on e.dep_id=d.dep_id and d.dep_location='PERTH';

-- 173. Write a SQL query to list the employees of grade 2 or 3 and the department where he or she works, is located in the city PERTH. Return complete information about the employees.
select e.emp_id, e.emp_name, e.job_name, e.manager_id, e.hire_date, e.salary, e.commission, e.dep_id from employees e join department d on e.dep_id=d.dep_id and d.dep_location='PERTH' join salary_grade sg on e.salary between sg.min_salary and sg.max_salary and sg.grade in (2,3);

-- 174. Write a SQL query to find those employees whose designation is same as the designation of ADELYN or the salary is more than the salary of WADE. Return complete information about the employees.
select * from employees where job_name=(select job_name from employees where emp_name='ADELYN') or salary>(select salary from employees where emp_name='WADE');

-- 175. Write a SQL query to find those employees of department 1001 whose salary is more than the salary of ADELYN. Return complete information about the employees.
select * from employees where dep_id=1001 and salary>(select salary from employees where emp_name='ADELYN');

-- 176. Write a SQL query to find those managers who are senior to KAYLING and who are junior to SANDRINE. Return complete information about the employees.
select * from employees where emp_id in (select distinct manager_id from employees where manager_id is not null) and hire_date < (select hire_date from employees where emp_name='KAYLING') and hire_date > (select hire_date from employees where emp_name='SANDRINE'); 

-- 177. Write a SQL query to find those employees who work in the department where KAYLING works. Return employee ID, employee name, department location, salary department name.
select emp_id, emp_name, dep_location, salary, dep_name from employees natural join department where dep_id=(select dep_id from employees where emp_name='KAYlING');

-- 178. Write a SQL query to find those employees whose salary grade is greater than the grade of MARKER. Return complete information about the employees.
select * from employees join salary_grade on salary between min_salary and max_salary where grade>(select grade from employees join salary_grade on emp_name='MARKER' and salary between min_salary and max_salary); 

-- 179. Write a SQL query to find those employees whose grade same as the grade of TUCKER or experience is more than SANDRINE and who are belonging to SYDNEY or PERTH. Return complete information about the employees.
select * from employees join salary_grade on salary between min_salary and max_salary where grade=(select grade from employees join salary_grade on emp_name='TUCKER' and salary between min_salary and max_salary) and dep_id in (select dep_id from department where dep_location in ('SYDNEY','PERTH'));

-- 180. Write a SQL query to find those employees whose salary is same as any one of the employee. Return complete information about the employees.
select e1.emp_id, e1.emp_name, e1.hire_date, e1.job_name, e1.manager_id, e1.salary, e1.commission, e1.dep_id from employees e1, employees e2 where e1.emp_id<>e2.emp_id and e1.salary=e2.salary;

-- 181. Write a SQL query to find compute the total remuneration (salary + commission) of all sales person of MARKETING department. Return complete information about the employees.
select emp_id, emp_name, hire_date, job_name, manager_id, salary, commission, employees.dep_id, salary+ifnull(commission,0) as 'total remuneration' from employees join department on employees.dep_id=department.dep_id and dep_name='MARKETING';

-- 182. Write a SQL query to find the recently hired employees of department 3001. Return complete information about the employees.
select * from employees where dep_id=3001 and hire_date = (select max(hire_date) from employees where dep_id=3001);

-- 183. Write a SQL query to find the highest paid employees of PERTH who joined before recently hired employee of grade 2. Return complete information about the employees.
select emp_id, emp_name, hire_date, job_name, manager_id, salary, commission, employees.dep_id from employees join department on employees.dep_id=department.dep_id and dep_location='PERTH' where hire_date < ( select max(hire_date) from employees join salary_grade on salary between min_salary and max_salary and grade=2) and salary=(select max(salary) from employees join department on employees.dep_id=department.dep_id and dep_location='PERTH' where hire_date < ( select max(hire_date) from employees join salary_grade on salary between min_salary and max_salary and grade=2));

-- 184. Write a SQL query to find the highest paid employees work under KAYLING. Return complete information about the employees.
select e1.emp_id, e1.emp_name, e1.hire_date, e1.job_name, e1.manager_id, e1.salary, e1.commission, e1.dep_id from employees e1 join employees e2 on e1.manager_id=e2.emp_id and e2.emp_name='KAYLING' where e1.salary = (select max(e3.salary) from employees e3 join employees e4 on e3.manager_id=e4.emp_id and e4.emp_name='KAYLING');

-- 185. Write a SQL query to find those employees whose net pay are higher than or equal to the salary of any other employee in the company. Return employee name, salary, and commission.
select emp_name, salary, commission from employees where salary >= any (select salary from employees);

-- 186. Write a SQL query to find those employees whose salaries are greater than the salaries of their managers. Return complete information about the employees.
select e1.emp_id, e1.emp_name, e1.hire_date, e1.job_name, e1.manager_id, e1.salary, e1.commission, e1.dep_id from employees e1 join employees e2 on e1.manager_id=e2.emp_id and e1.salary>e2.salary;

-- 187. Write a SQL query to find the maximum average salary out of all job except for PRESIDENT.
select max(temp.average) from (select avg(salary) as 'average' from employees where job_name <> 'PRESIDENT' group by job_name) as temp;

-- 188. Write a SQL query to count the number of employees who work as a manager. Return number of employees.
select count(distinct manager_id) from employees;

-- 189. Write a SQL query to find those departments where no employee works. Return department ID.
select dep_id from department left join employees using (dep_id) group by dep_id having count(emp_id)=0;