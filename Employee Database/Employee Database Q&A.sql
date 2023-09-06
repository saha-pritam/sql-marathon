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




