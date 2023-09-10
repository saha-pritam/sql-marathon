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






