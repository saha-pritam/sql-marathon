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
