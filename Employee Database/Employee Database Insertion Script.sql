-- INSERT STATEMENTS FOR DEPARTMENT TABLE
INSERT INTO department (dep_id, dep_name, dep_location) VALUES (1001,'FINANCE','SYDNEY');
INSERT INTO department (dep_id, dep_name, dep_location) VALUES (2001,'AUDIT','MELBOURNE');
INSERT INTO department (dep_id, dep_name, dep_location) VALUES (3001,'MARKETING','PERTH');
INSERT INTO department (dep_id, dep_name, dep_location) VALUES (4001,'PRODUCTION','BRISBANE');


-- INSERT STATEMENTS FOR EMPLOYEES TABLE
INSERT INTO employees (emp_id, emp_name, job_name, manager_id, hire_date, salary, commission, dep_id) VALUES (63679,'SANDRINE','CLERK',NULL,'1990-12-18',900.00,NULL,2001);
INSERT INTO employees (emp_id, emp_name, job_name, manager_id, hire_date, salary, commission, dep_id) VALUES (64989,'ADELYN','SALESMAN',NULL,'1991-02-20',1700.00,400.00,3001);
INSERT INTO employees (emp_id, emp_name, job_name, manager_id, hire_date, salary, commission, dep_id) VALUES (65271,'WADE','SALESMAN',NULL,'1991-02-22',1350.00,600.00,3001);
INSERT INTO employees (emp_id, emp_name, job_name, manager_id, hire_date, salary, commission, dep_id) VALUES (65646,'JONAS','MANAGER',NULL,'1991-04-02',2957.00,NULL,2001);
INSERT INTO employees (emp_id, emp_name, job_name, manager_id, hire_date, salary, commission, dep_id) VALUES (66564,'MADDEN','SALESMAN',NULL,'1991-09-28',1350.00,1500.00,3001);
INSERT INTO employees (emp_id, emp_name, job_name, manager_id, hire_date, salary, commission, dep_id) VALUES (66928,'BLAZE','MANAGER',NULL,'1991-05-01',2750.00,NULL,3001);
INSERT INTO employees (emp_id, emp_name, job_name, manager_id, hire_date, salary, commission, dep_id) VALUES (67832,'CLARE','MANAGER',NULL,'1991-06-09',2550.00,NULL,1001);
INSERT INTO employees (emp_id, emp_name, job_name, manager_id, hire_date, salary, commission, dep_id) VALUES (67858,'SCARLET','ANALYST',NULL,'1997-04-19',3100.00,NULL,2001);
INSERT INTO employees (emp_id, emp_name, job_name, manager_id, hire_date, salary, commission, dep_id) VALUES (68319,'KAYLING','PRESIDENT',NULL,'1991-11-18',6000.00,NULL,1001);
INSERT INTO employees (emp_id, emp_name, job_name, manager_id, hire_date, salary, commission, dep_id) VALUES (68454,'TUCKER','SALESMAN',NULL,'1991-09-08',1600.00,0.00,3001);
INSERT INTO employees (emp_id, emp_name, job_name, manager_id, hire_date, salary, commission, dep_id) VALUES (68736,'ADNRES','CLERK',NULL,'1997-05-23',1200.00,NULL,2001);
INSERT INTO employees (emp_id, emp_name, job_name, manager_id, hire_date, salary, commission, dep_id) VALUES (69000,'JULIUS','CLERK',NULL,'1991-12-03',1050.00,NULL,3001);
INSERT INTO employees (emp_id, emp_name, job_name, manager_id, hire_date, salary, commission, dep_id) VALUES (69062,'FRANK','ANALYST',NULL,'1991-12-03',3100.00,NULL,2001);
INSERT INTO employees (emp_id, emp_name, job_name, manager_id, hire_date, salary, commission, dep_id) VALUES (69324,'MARKER','CLERK',NULL,'1992-01-23',1400.00,NULL,1001);


-- UPDATE STATEMENTS FOR EMPLOYEES TABLE FOR MAPPING MANAGERS OF EVERY EMPLOYEES
update employees set manager_id=66928 where emp_id=68319;
update employees set manager_id=67832 where emp_id=68319;
update employees set manager_id=65646 where emp_id=68319;
update employees set manager_id=64989 where emp_id=66928;
update employees set manager_id=65271 where emp_id=66928;
update employees set manager_id=66564 where emp_id=66928;
update employees set manager_id=68454 where emp_id=66928;
update employees set manager_id=68736 where emp_id=67858;
update employees set manager_id=69000 where emp_id=66928;
update employees set manager_id=69324 where emp_id=67832;
update employees set manager_id=67858 where emp_id=65646;
update employees set manager_id=69062 where emp_id=65646;
update employees set manager_id=63679 where emp_id=69062;


-- INSERT STATEMENTS FOR SALARY_GRADE TABLE
INSERT INTO salary_grade (grade, min_salary, max_salary) VALUES (1,800,1300);
INSERT INTO salary_grade (grade, min_salary, max_salary) VALUES (2,1301,1500);
INSERT INTO salary_grade (grade, min_salary, max_salary) VALUES (3,1501,2100);
INSERT INTO salary_grade (grade, min_salary, max_salary) VALUES (4,2101,3100);
INSERT INTO salary_grade (grade, min_salary, max_salary) VALUES (5,3101,9999);
