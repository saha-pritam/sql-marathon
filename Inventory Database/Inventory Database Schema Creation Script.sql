drop database if exists inventory;
create database inventory;
use inventory;

create table salesman
(
	salesman_id numeric(5) primary key,
    name varchar(30),
    city varchar(15),
    commission decimal(5,2)
);

create table customer
(
	customer_id numeric(5) primary key, 
    cust_name varchar(30),
    city varchar(15),
    grade numeric(3),
    salesman_id numeric(5),
    constraint fk_1_customer foreign key (salesman_id) references salesman(salesman_id)
);

create  table orders
(
	ord_no numeric(5) primary key,
    purch_amt decimal(8,2),
    ord_date date,
    customer_id numeric(5),
    salesman_id numeric(5),
    constraint fk_1_orders foreign key (customer_id) references customer(customer_id),
    constraint fk_2_orders foreign key (salesman_id) references salesman(salesman_id)
);