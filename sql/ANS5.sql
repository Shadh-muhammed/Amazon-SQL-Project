/*5. Customers with No Purchases
Registered users with zero orders*/

--APPROACH 1
SELECT * FROM CUSTOMERS
WHERE customer_id NOT IN(
SELECT DISTINCT CUSTOMER_ID
FROM orders);


--APPROACH 2
SELECT *
FROM customers as c
LEFT JOIN
orders as o
ON o.customer_id = c.customer_id
WHERE o.customer_id IS NULL