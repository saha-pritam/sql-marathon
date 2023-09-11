-- 1. Write a SQL statement that displays all the information about all salespeople.
select * from salesman;

-- 2. Write a SQL statement to display a string "This is SQL Exercise, Practice and Solution". 
select  "This is SQL Exercise, Practice and Solution";

-- 3. Write a SQL query to display three numbers in three columns. 
select 10,20,30;

-- 4. Write a SQL query to display the sum of two numbers 10 and 15 from the RDBMS server.   
select 10+15;

-- 5. Write an SQL query to display the result of an arithmetic expression. 
select 10/2+5;

-- 6. Write a SQL statement to display specific columns such as names and commissions for all salespeople.
select name, commission from salesman;

-- 7. Write a query to display the columns in a specific order, such as order date, salesman ID, order number, and purchase amount for all orders.   
select ord_date, salesman_id, ord_no, purch_amt from orders;

-- 8. Write a SQL query to identify the unique salespeople ID from orders table. Return salesman_id. 
select distinct salesman_id from orders;

-- 9. Write a SQL query to locate salespeople who live in the city of 'Paris'. Return salesperson's name, city. 
select name, city from salesman where city='Paris'; 

-- 10. Write a SQL query to find customers whose grade is 200. Return customer_id, cust_name, city, grade, salesman_id.   
select customer_id, cust_name, city, grade, salesman_id from customer where grade=200;

-- 11. Write a SQL query to find orders that are delivered by a salesperson with ID. 5001. Return ord_no, ord_date, purch_amt.   
select ord_no, ord_date, purch_amt from orders where salesman_id=5001;

-- 12. Write a SQL query to locate the details of customers with grade values above 100. Return customer_id, cust_name, city, grade, and salesman_id. 
select customer_id, cust_name, city, grade, salesman_id from customer where grade>100;

-- 13. Write a SQL query to find all the customers in ‘New York’ city who have a grade value above 100. Return customer_id, cust_name, city, grade, and salesman_id.  
select customer_id, cust_name, city, grade, salesman_id from customer where city='New York' and grade>100;

-- 14. Write a SQL query to find customers who are from the city of New York or have a grade of over 100. Return customer_id, cust_name, city, grade, and salesman_id. 
select customer_id, cust_name, city, grade, salesman_id from customer where city='New York' or grade>100;

-- 15. Write a SQL query to find customers who are either from the city 'New York' or who do not have a grade greater than 100. Return customer_id, cust_name, city, grade, and salesman_id. 
select customer_id, cust_name, city, grade, salesman_id from customer where city='New York' or grade<=100;

-- 16. Write a SQL query to identify customers who do not belong to the city of 'New York' or have a grade value that exceeds 100. Return customer_id, cust_name, city, grade, and salesman_id. 
select customer_id, cust_name, city, grade, salesman_id from customer where city <> 'New York' or grade>100;

-- 17. Write a SQL query to find details of all orders excluding those with ord_date equal to '2012-09-10' and salesman_id higher than 5005 or purch_amt greater than 1000.Return ord_no, purch_amt, ord_date, customer_id and salesman_id.
select ord_no, purch_amt, ord_date, customer_id, salesman_id from orders where not (ord_date='2012-09-10' and salesman_id>5005 or purch_amt>1000);

-- 18. Write a SQL query to find the details of those salespeople whose commissions range from 0.10 to0.12. Return salesman_id, name, city, and commission.   
select salesman_id, name, city, commission from salesman where commission>0.10 and commission<0.12;

-- 19. Write a SQL query to find details of all orders with a purchase amount less than 200 or exclude orders with an order date greater than or equal to '2012-02-10' and a customer ID less than 3009. Return ord_no, purch_amt, ord_date, customer_id and salesman_id. 
select ord_no, purch_amt, ord_date, customer_id, salesman_id from orders where purch_amt<200 or not (ord_date>='2012-02-10' and customer_id<3009);

-- 20. Write a SQL query to find all orders that meet the following conditions. Exclude combinations of order date equal to '2012-08-17' or customer ID greater than 3005 and purchase amount less than 1000.  
select * from orders where not (ord_date='2012-08-17' or customer_id>3005 and purch_amt<1000);

-- 21. Write a SQL query that displays order number, purchase amount, and the achieved and unachieved percentage (%) for those orders that exceed 50% of the target value of 6000. 
select ord_no, purch_amt, purch_amt/6000*100 as 'Achieved percentage (%)', 100-purch_amt/6000*100 as 'unachieved percentage (%)' from orders where purch_amt/6000*100>50;