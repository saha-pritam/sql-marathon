drop database if exists employee;
create database if not exists employee;
use employee;

drop table if exists department;
create table if not exists department 
(
	dep_id integer primary key,
    dep_name varchar(20),
    dep_location varchar(15)
);

drop table if exists salary_grade;
create table if not exists salary_grade 
(
	grade integer primary key,
    min_salary integer,
    max_salary integer
);

drop table if exists employees;
create table if not exists employees
(
	emp_id integer primary key,
    emp_name varchar(15),
    job_name varchar(10),
    manager_id integer, 
    hire_date date,
    salary decimal(10,2),
    commission decimal(7,2),
    dep_id integer,
    constraint fk_1_employess foreign key (dep_id) references department(dep_id),
    constraint fk_2_employess foreign key (manager_id) references employees(emp_id)
);

