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

 
