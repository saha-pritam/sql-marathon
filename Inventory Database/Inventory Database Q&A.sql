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

-- 22. Write a SQL query to find the details of those salespeople who come from the 'Paris' City or 'Rome' City. Return salesman_id, name, city, commission. 
select salesman_id, name, city, commission from salesman where city in ('Paris','Rome');

-- 23. Write a SQL query to find the details of the salespeople who come from either 'Paris' or 'Rome'. Return salesman_id, name, city, commission. 
select salesman_id, name, city, commission from salesman where city in ('Paris','Rome');

-- 24. Write a SQL query to find the details of those salespeople who live in cities other than Paris and Rome. Return salesman_id, name, city, commission. 
select salesman_id, name, city, commission from salesman where city not in ('Paris','Rome');

-- 25. Write a SQL query to retrieve the details of all customers whose ID belongs to any of the values 3007, 3008 or 3009. Return customer_id, cust_name, city, grade, and salesman_id. 
select customer_id, cust_name, city, grade, salesman_id from customer where customer_id in (3007, 3008, 3009);

-- 26. Write a SQL query to find salespeople who receive commissions between 0.12 and 0.14 (begin and end values are included). Return salesman_id, name, city, and commission. 
select salesman_id, name, city, commission from salesman where commission between 0.12 and 0.14;

-- 27. Write a SQL query to select orders between 500 and 4000 (begin and end values are included). Exclude orders amount 948.50 and 1983.43. Return ord_no, purch_amt, ord_date, customer_id, and salesman_id. 
select ord_no, purch_amt, ord_date, customer_id, salesman_id from orders where purch_amt between 500 and 4000 and purch_amt not in (948.50,1983.43);

-- 28. Write a SQL query to retrieve the details of the salespeople whose names begin with any letter between 'A' and 'L' (not inclusive). Return salesman_id, name, city, commission. 
select salesman_id, name, city, commission from salesman where substring(name,1,1) between 'B' and 'K';

-- 29. Write a SQL query to find the details of all salespeople except those whose names begin with any letter between 'A' and 'L' (not inclusive). Return salesman_id, name, city, commission. 
select salesman_id, name, city, commission from salesman where  substring(name,1,1) not between 'B' and 'K';

-- 30. Write a SQL query to retrieve the details of the customers whose names begins with the letter 'B'. Return customer_id, cust_name, city, grade, salesman_id. 
select customer_id, cust_name, city, grade, salesman_id from customer where cust_name like 'B%';

-- 31. Write a SQL query to find the details of the customers whose names end with the letter 'n'. Return customer_id, cust_name, city, grade, salesman_id. 
select customer_id, cust_name, city, grade, salesman_id from customer where cust_name like '%n';

-- 32. Write a SQL query to find the details of those salespeople whose names begin with ‘N’ and the fourth character is 'l'. Rests may be any character. Return salesman_id, name, city, commission.
 select salesman_id, name, city, commission from salesman where name like 'N__l%';
 
-- 33. Write a SQL query to calculate total purchase amount of all orders. Return total purchase amount. 
select sum(purch_amt) as 'total purchase amount' from orders;

-- 34.Write a SQL query to calculate the average purchase amount of all orders. Return average purchase amount.   
select avg(purch_amt) as 'average purchase amount' from orders;

-- 35. Write a SQL query that counts the number of unique salespeople from orders table. Return number of salespeople. 
select count(distinct salesman_id) as 'number of salespeople' from orders;

-- 36. Write a SQL query to count the number of customers from customer table. Return number of customers. 
select count(customer_id) as 'number of customers' from customer;

-- 37. Write a SQL query to determine the number of customers who received at least one grade for their activity. 
select count(customer_id) as 'Number of customers' from customer where grade is not null;

-- 38. Write a SQL query to find the maximum purchase amount. 
select max(purch_amt) as 'maximum purchase amount' from orders;

-- 39. Write a SQL query to find the minimum purchase amount. 
select min(purch_amt) as 'minimum purchase amount' from orders;

-- 40. Write a SQL query to find the highest grade of the customers in each city. Return city, maximum grade. 
select city, max(grade) as 'maximum grade' from customer group by city;

-- 41. Write a SQL query to find the highest purchase amount ordered by each customer. Return customer ID, maximum purchase amount. 
select customer_id, max(purch_amt) as 'maximum purchase amount' from orders group by customer_id;

-- 42. Write a SQL query to find the highest purchase amount ordered by each customer on a particular date. Return customer id, order date and highest purchase amount. 
select customer_id, ord_date, max(purch_amt) as 'highest purchase amount' from orders group by customer_id, ord_date;

-- 43. Write a SQL query to determine the highest purchase amount made by each salesperson on '2012-08-17'. Return salesperson ID, purchase amount 
select salesman_id, max(purch_amt) as 'purchase amount' from orders where ord_date='2012-08-17' group by salesman_id;
 
-- 44. Write a SQL query to find the highest order (purchase) amount by each customer on a particular order date. Filter the result by highest order (purchase) amount above 2000.00. Return customer id, order date and maximum purchase amount. 
select customer_id, ord_date, max(purch_amt) as 'maximum purchase amount' from orders where purch_amt>2000 group by customer_id, ord_date;

-- 45. Write a SQL query to find the maximum order (purchase) amount in the range 2000 - 6000 (Begin and end values are included.) by combination of each customer and order date. Return customer id, order date and maximum purchase amount. 
select customer_id, ord_date, max(purch_amt) as 'maximum purchase amount' from orders where purch_amt between 2000 and 6000 group by customer_id, ord_date;

-- 46. Write a SQL query to find the maximum order (purchase) amount based on the combination of each customer and order date. Filter the rows for maximum order (purchase) amount is either 2000, 3000, 5760, 6000. Return customer id, order date and maximum purchase amount. 
select customer_id, ord_date, max(purch_amt) as 'maximum purchase amount' from orders where purch_amt in (2000,3000,5760,6000) group by customer_id, ord_date;

-- 47. Write a SQL query to determine the maximum order amount for each customer. The customer ID should be in the range 3002 and 3007(Begin and end values are included.). Return customer id and maximum purchase amount. 
select customer_id, max(purch_amt) as 'maximum purchase amount' from orders where customer_id between 3002 and 3007 group by customer_id;

-- 48. Write a SQL query to find the maximum order (purchase) amount for each customer. The customer ID should be in the range 3002 and 3007(Begin and end values are included.). Filter the rows for maximum order (purchase) amount is higher than 1000. Return customer id and maximum purchase amount.  
select customer_id, max(purch_amt) as 'maximum purchase amount' from orders where customer_id between 3002 and 3007 and purch_amt>1000 group by customer_id;

-- 49. Write a SQL query to determine the maximum order (purchase) amount generated by each salesperson. Filter the rows for the salesperson ID is in the range 5003 and 5008 (Begin and end values are included.). Return salesperson id and maximum purchase amount. 
select salesman_id, max(purch_amt) as 'maximum purchase amount' from orders where salesman_id between 5003 and 5008 group by salesman_id;

-- 50. Write a SQL query to count all the orders generated on '2012-08-17'. Return number of orders. 
select count(ord_no) as 'number of orders' from orders where ord_date='2012-08-17';

-- 51. Write a SQL query to count the number of salespeople in a city. Return number of salespeople. 
select city, count(salesman_id) as 'number of salespeople' from salesman group by city;

-- 52. Write a SQL query to count the number of orders based on the combination of each order date and salesperson. Return order date, salesperson id, count of orders. 
select salesman_id, ord_date, count(ord_date) as 'count of orders' from orders group by salesman_id, ord_date;

-- 53. Write a SQL query to select all the salespeople. Return salesman_id, name, city, commission with the percent sign (%). 
select salesman_id, name, city, concat(commission*100,'%') as 'Commission' from salesman;
 
-- 54. Write a SQL query to find the number of orders booked for each day. Return the result in a format like "For 2001-10-10 there are 15 orders". 
select concat('For ', ord_date, ' there are ',count(ord_no), ' orders.') from orders group by ord_date;

-- 55. Write a SQL query to find all the orders. Sort the result-set in ascending order by ord_no. Return all fields. 
select * from orders order by ord_no;

-- 56. Write a SQL query to find all the orders. Sort the result-set in descending order by ord_date. Return all fields. 
select * from orders order by ord_date desc;

-- 57. Write a SQL query to find all the orders. Sort the result-set in descending order by ord_date and purch_amt. Return all fields 
select * from orders order by ord_date desc, purch_amt desc;

-- 58. Write a SQL query to find all the customers. Sort the result-set by customer_id. Return cust_name, city, grade. 
select cust_name, city, grade from customer order by customer_id;

-- 59. Write a SQL query that calculates the maximum purchase amount generated by each salesperson for each order date. Sort the result-set by salesperson id and order date in ascending order. Return salesperson id, order date and maximum purchase amount          
select salesman_id, ord_date, max(purch_amt) as 'maximum purchase amount' from orders group by salesman_id, ord_date order by salesman_id, ord_date;

-- 60. Write a SQL query to find all the customers. Sort the result-set in descending order on 3rd field. Return customer name, city and grade. 
select cust_name, city, grade from customer order by grade desc;

-- 61. Write a SQL query that counts the unique orders and the highest purchase amount for each customer. Sort the result-set in descending order on 2nd field. Return customer ID, number of distinct orders and highest purchase amount by each customer. 
select customer_id, count(ord_no) as 'number of distinct orders', max(purch_amt) as 'highest purchase amount' from orders group by customer_id order by count(ord_no) desc;

-- 62. Write a SQL query to calculate the summation of purchase amount, total commission (15% for all salespeople) by each order date. Sort the result-set on order date. Return order date, summation of purchase amount and commission.
select ord_date, sum(purch_amt) as 'summation of purchase amount',  sum(purch_amt)*0.15 as 'Commission' from orders group by ord_date order by ord_date;

-- 63. Write a SQL query to find the salespeople and customers who live in the same city. Return customer name, salesperson name and salesperson city. 
select c.cust_name, s.name, c.city from salesman s join customer c using(city);

-- 64. Write a SQL query to locate all the customers and the salesperson who works for them. Return customer name, and salesperson name. 
select cust_name, name from salesman join customer using(salesman_id);

-- 65. Write a SQL query to find those salespeople who generated orders for their customers but are not located in the same city. Return ord_no, cust_name, customer_id (orders table), salesman_id (orders table). 
select o.ord_no, c.cust_name, o.customer_id, o.salesman_id from salesman s join orders o on s.salesman_id=o.salesman_id join customer c on c.customer_id=o.customer_id and s.city<>c.city; 

-- 66. Write a SQL query to locate the orders made by customers. Return order number, customer name. 
select ord_no, cust_name from orders natural join customer;

-- 67. Write a SQL query to find those customers where each customer has a grade and is served by a salesperson who belongs to a city. Return cust_name as "Customer", grade as "Grade". 
select cust_name as 'Customer', grade as 'Grade' from customer join salesman using(salesman_id) where grade is not null and salesman.city is not null;

-- 68. Write a SQL query to find those customers who are served by a salesperson and the salesperson earns commission in the range of 12% to 14% (Begin and end values are included.). Return cust_name AS "Customer", city AS "City".  
select cust_name AS "Customer", customer.city AS "City" from salesman join customer using(salesman_id) where commission between 0.12 and 0.14;

-- 69. Write a SQL query to find all orders executed by the salesperson and ordered by the customer whose grade is greater than or equal to 200. Compute purch_amt*commission as “Commission Amount”. Return order no, customer name, commission and Commission amount.  
select ord_no, cust_name, commission , purch_amt * commission as 'Commission Amount' from orders join customer on orders.customer_id=customer.customer_id and customer.grade>=200 join salesman on salesman.salesman_id=orders.salesman_id; 

-- 70. Write a SQL query to find those customers who placed orders on October 5, 2012. Return customer_id, cust_name, city, grade, salesman_id, ord_no, purch_amt, ord_date, customer_id and salesman_id.
select c.customer_id, c.cust_name, c.city, c.grade, o.salesman_id, o.ord_no, o.purch_amt, o.ord_date, o.customer_id, o.salesman_id from customer c natural join orders o where o.ord_date='2012-10-05';

-- 71. Write a SQL query to find the salesperson and customer who reside in the same city. Return Salesman, cust_name and city. 
select name, cust_name, city from salesman join customer using(city);

-- 72. Write a SQL query to find those orders where the order amount exists between 500 and 2000. Return ord_no, purch_amt, cust_name, city. 
select ord_no, purch_amt, cust_name, city from orders natural join customer where purch_amt between 500 and 2000;

-- 73. Write a SQL query to find the salesperson(s) and the customer(s) he represents. Return Customer Name, city, Salesman, commission. 
select cust_name, customer.city, name, commission from customer join salesman using(salesman_id);

-- 74. Write a SQL query to find salespeople who received commissions of more than 12 percent from the company. Return Customer Name, customer city, Salesman, commission. 
select cust_name, customer.city, name, commission from customer join salesman using(salesman_id) where commission>0.12;
 
-- 75. Write a SQL query to locate those salespeople who do not live in the same city where their customers live and have received a commission of more than 12% from the company. Return Customer Name, customer city, Salesman, salesman city, commission. 
select cust_name, customer.city, name, salesman.city, commission from customer join salesman using(salesman_id) where commission>0.12 and customer.city<>salesman.city;

-- 76. Write a SQL query to find the details of an order. Return ord_no, ord_date, purch_amt, Customer Name, grade, Salesman, commission 
select ord_no, ord_date, purch_amt, cust_Name, grade, name, commission from customer join orders using(customer_id) join salesman on orders.salesman_id=salesman.salesman_id;

-- 77. Write a SQL statement to join the tables salesman, customer and orders so that the same column of each table appears once and only the relational rows are returned. 
select ord_no, ord_date, purch_amt, customer.customer_id, cust_Name, customer.city, grade, salesman.salesman_id, name, salesman.city, commission from customer join orders using(customer_id) join salesman on orders.salesman_id=salesman.salesman_id;

-- 78. Write a SQL query to display the customer name, customer city, grade, salesman, salesman city. The results should be sorted by ascending customer_id. 
select c.cust_name, c.city, c.grade, s.name, s.city from customer c join salesman s using(salesman_id) order by c.customer_id;

-- 79. Write a SQL query to find those customers with a grade less than 300. Return cust_name, customer city, grade, Salesman, salesmancity. The result should be ordered by ascending customer_id. 
select c.cust_name, c.city, c.grade, s.name, s.city from customer c join salesman s using(salesman_id) where c.grade<300 order by c.customer_id;

-- 80. Write a SQL statement to make a report with customer name, city, order number, order date, and order amount in ascending order according to the order date to determine whether any of the existing customers have placed an order or not 
select cust_name, city, ord_no, ord_date, purch_amt from customer left join orders using(customer_id) order by ord_date;

-- 81. Write a SQL statement to generate a list in ascending order of salespersons who work either for one or more customers or have not yet joined any of the customers. 
select * from salesman left join customer using(salesman_id) order by salesman_id;

-- 82. Write a SQL query to list all salespersons along with customer name, city, grade, order number, date, and amount. 
select cust_name, customer.city, grade, ord_no, ord_date, purch_amt from salesman left join orders using(salesman_id) left join customer on orders.customer_id=customer.customer_id;

-- 83. Write a SQL query to combine each row of the salesman table with each row of the customer table. 
select s.salesman_id,s.name,s.city,s.commission,c.customer_id,c.cust_name,c.city,c.grade from salesman s, customer c;

-- 84. Write a SQL statement to create a Cartesian product between salesperson and customer, i.e. each salesperson will appear for every customer and vice versa for those salesmen who belong to a city and customers who require a grade. 
select * from salesman s, customer c where s.city is not null and c.grade is not null order by s.salesman_id;

-- 85. Write a SQL statement to make a Cartesian product between salesman and customer i.e. each salesman will appear for all customers and vice versa for those salesmen who must belong to a city which is not the same as his customer and the customers should have their own grade.    
select * from salesman s, customer c where s.city is not null and s.city<>c.city and c.grade is not null;

-- 86. Create a view for those salespeople who belong to the city of New York.
create view v1 as select * from salesman where city='New York';
select * from v1;

-- 87. Create a view for all salespersons. Return salesperson ID, name, and city.
create view v2 as select salesman_id, name, city from salesman;
select * from v2; 

-- 88. Create a view that counts the number of customers in each grade
create view v3 as select  grade, count(customer_id) from customer group by grade;
select * from v3;

-- 89. Create a view to count the number of unique customers, compute the average and the total purchase amount of customer orders by each date.
create view v4 as select count(distinct customer_id), avg(purch_amt), ord_date from orders group by ord_date;
select * from v4;

-- 90. Create a view to return order no, purchase amount, salesperson ID, name, customer name.
create view v5 as select ord_no, purch_amt, salesman.salesman_id, name, cust_name from salesman join orders using(salesman_id) join customer using(customer_id);
select * from v5;

-- 91. Create a view to find all the customers who have the highest grade. Return all the fields of customer.
create view v6 as select * from customer where grade = (select max(grade) from customer);
select * from v6;

-- 92. Create a view to count the number of salespeople in each city. Return city, number of salespersons
create view v7 as select city, count(salesman_id) from salesman group by city;
select * from v7;

-- 93. Create a view to identify salespeople who work with multiple clients. Return all the fields of salesperson.
create view v8 as select s.salesman_id, s.name, s.city, s.commission from salesman s where  (select count(*) from customer where salesman_id=s.salesman_id)>1;
select * from v8;

-- 94. Create a view to compute the average purchase amount and total purchase amount for each salesperson. Return name, average purchase and total purchase amount. (Assume all names are unique.).
create view v9 as select name, avg(purch_amt), sum(purch_amt) from orders natural join salesman group by name;
select * from v9;

-- 95. Create a view to display the number of orders per day. Return order date and number of orders.
create view v10 as select ord_date, count(ord_no) from orders group by ord_date;
select * from v10;

-- 96. Create a view to find the salespeople who placed orders on October 10th, 2012. Return all the fields of salesperson.
create view v11 as select s.salesman_id, s.name, s.city, s.commission from orders o join salesman s using(salesman_id) where ord_date = '2012-10-10';
select * from v11;

-- 97. Create a view to find the salespersons who issued orders on either August 17th, 2012 or October 10th, 2012. Return salesperson ID, order number and customer ID.
create view v12 as select salesman_id, ord_no, customer_id from orders where ord_date in ('2012-08-17','2012-10-10');
select * from v12;

-- 98. Write a SQL query to find all salespeople and customers located in the city of London.
select name from salesman where city='London' union select cust_name from customer where city='London';

-- 99. Write a SQL query to find all the orders issued by the salesman 'Paul Adam'. Return ord_no, purch_amt, ord_date, customer_id and salesman_id.
select ord_no, purch_amt, ord_date, customer_id, salesman_id from orders where salesman_id = (select salesman_id from salesman where name='Paul Adam');

-- 100. Write a SQL query to find all orders generated by London-based salespeople. Return ord_no, purch_amt, ord_date, customer_id, salesman_id.
select ord_no, purch_amt, ord_date, customer_id, salesman_id from orders where salesman_id in (select salesman_id from salesman where city='London');

-- 101. Write a SQL query to find all orders generated by the salespeople who may work for customers whose id is 3007. Return ord_no, purch_amt, ord_date, customer_id, salesman_id.
select ord_no, purch_amt, ord_date, customer_id, salesman_id from orders where salesman_id in (select salesman_id from customer where customer_id=3007);

-- 102. Write a SQL query to find the order values greater than the average order value of 10th October 2012. Return ord_no, purch_amt, ord_date, customer_id, salesman_id.
select ord_no, purch_amt, ord_date, customer_id, salesman_id from orders where purch_amt > (select avg(purch_amt) from orders where ord_date='2012-10-10');

-- 103. Write a SQL query to find all the orders generated in New York city. Return ord_no, purch_amt, ord_date, customer_id and salesman_id.
select ord_no, purch_amt, ord_date, customer_id and salesman_id from orders where customer_id in (select customer_id from customer where city='New York');

-- 104. Write a SQL query to determine the commission of the salespeople in Paris. Return commission
select commission from salesman where city='Paris';

-- 105. Write a query to display all the customers whose ID is 2001 less than the salesperson ID of Mc Lyon
select * from customer where customer_id = (select salesman_id from salesman where name='Mc Lyon')-2001;

-- 106. Write a SQL query to count the number of customers with grades above the average in New York City. Return grade and count.  
select count(customer_id) from customer where grade > (select avg(grade) from customer where city = 'New York');

-- 107. Write a SQL query to find those salespeople who earned the maximum commission. Return ord_no, purch_amt, ord_date, and salesman_id.
select ord_no, purch_amt, ord_date, salesman_id from orders where salesman_id in (select salesman_id from salesman natural join orders where purch_amt*commission=(select max(purch_amt*commission) from salesman natural join orders));

-- 108. Write SQL query to find the customers who placed orders on 17th August 2012. Return ord_no, purch_amt, ord_date, customer_id, salesman_id and cust_name
select ord_no, purch_amt, ord_date, customer_id, salesman_id, cust_name from customer natural join orders where ord_date='2012-08-17';

-- 109. Write a SQL query to find salespeople who had more than one customer. Return salesman_id and name
select salesman_id, name from salesman join customer using(salesman_id) group by salesman_id, name having count(customer_id)>1;

-- 110. Write a SQL query to find those orders, which are higher than the average amount of the orders. Return ord_no, purch_amt, ord_date, customer_id and salesman_id.
select  ord_no, purch_amt, ord_date, customer_id salesman_id from orders where purch_amt > (select avg(purch_amt) from orders);

-- 111. Write a SQL query to find those orders that are equal or higher than the average amount of the orders. Return ord_no, purch_amt, ord_date, customer_id and salesman_id.
select  ord_no, purch_amt, ord_date, customer_id salesman_id from orders where purch_amt >= (select avg(purch_amt) from orders);

-- 112. Write a query to find the sums of the amounts from the orders table, grouped by date, and eliminate all dates where the sum was not at least 1000.00 above the maximum order amount for that date.
select ord_date, sum(purch_amt) from orders o1 group by ord_date having sum(purch_amt)-(select max(purch_amt) from orders o2 where o1.ord_date=o2.ord_date)>=1000;

-- 113. Write a query to extract all data from the customer table if and only if one or more of the customers in the customer table are located in London.
select * from customer where (select count(customer_id) from customer where city='London')>=1;

-- 114. Write a SQL query to find salespeople who deal with multiple customers. Return salesman_id, name, city and commission.
select salesman_id, name, city, commission from salesman where salesman_id in (select salesman_id from customer group by salesman_id having count(customer_id)>1);

-- 115. Write a SQL query to find salespeople who deal with a single customer. Return salesman_id, name, city and commission.
select salesman_id, name, city, commission from salesman where salesman_id in (select salesman_id from customer group by salesman_id having count(customer_id)=1);

-- 116. Write a SQL query to find the salespeople who deal the customers with more than one order. Return salesman_id, name, city and commission. 
select s.salesman_id, s.name, s.city, s.commission from salesman s join customer c using(salesman_id) where c.customer_id in ( select customer_id from orders group by customer_id having count(ord_no)>1);

-- 117. Write a SQL query to find salespeople whose place of residence matches any city where customers live. Return salesman_id, name, city and commission.
select * from salesman where city = any (select distinct city from customer);

-- 118. Write a SQL query to find all those salespeople whose names appear alphabetically lower than any customer’s name. Return salesman_id, name, city, commission.
select * from salesman where name < any (select cust_name from customer);

-- 119. Write a SQL query to find all those customers with a higher grade than any of the customers whose city alphabetically below the city of New York. Return customer_id, cust_name, city, grade, salesman_id.
select * from customer where grade > any (select grade from customer where city < 'New York');

-- 120. Write a SQL query to find all those orders whose order amount exceeds at least one of the orders placed on September 10th 2012. Return ord_no, purch_amt, ord_date, customer_id and salesman_id.
select * from orders where purch_amt > any (select purch_amt from orders where ord_date='2012-09-10');

-- 121. Write a SQL query to find orders where the order amount is less than the order amount of a customer residing in London City. Return ord_no, purch_amt, ord_date, customer_id and salesman_id.
select * from orders where purch_amt < any (select purch_amt from orders natural join customer where city='London');

-- 122. Write a SQL query to find those orders where every order amount is less than the maximum order amount of a customer who lives in London City. Return ord_no, purch_amt, ord_date, customer_id and salesman_id.
select * from orders where purch_amt < any (select max(purch_amt) from orders natural join customer where city='London');

-- 123. Write a SQL query to find those customers whose grades are higher than those living in New York City. Return customer_id, cust_name, city, grade and salesman_id.
select * from customer where grade > all (select grade from customer where city='New York' and grade is not null);

-- 124. Write a SQL query to calculate the total order amount generated by a salesperson. Salespersons should be from the cities where the customers reside. Return salesperson name, city and total order amount.
select salesman.name, salesman.city, sum(purch_amt) from salesman join orders using(salesman_id) join customer using(customer_id) where salesman.city=customer.city group by salesman.salesman_id, salesman.name, salesman.city;

-- 125. Write a SQL query to find those customers whose grades are not the same as those who live in London City. Return customer_id, cust_name, city, grade and salesman_id.
select * from customer where grade not in (select grade from customer where city='London' and grade is not null);

-- 126. Write a SQL query to find those customers whose grades are different from those living in Paris. Return customer_id, cust_name, city, grade and salesman_id.
select * from customer where grade not in (select grade from customer where city='Paris' and grade is not null);

-- 127. Write a SQL query to find all those customers who have different grades than any customer who lives in Dallas City. Return customer_id, cust_name,city, grade and salesman_id.
select * from customer where grade not in (select grade from customer where city='Dallas' and grade is not null);
