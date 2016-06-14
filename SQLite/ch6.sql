--
-- Sam's Teach Yourself SQL in 10 Minutes
-- Chapter 6 Examples
--

-- Using Wildcard character %

SELECT prod_id, prod_name
FROM Products
WHERE prod_name LIKE 'Fish%';

-- Use at either end

SELECT prod_id, prod_name
FROM Products
WHERE prod_name LIKE '%bean bag%';

-- Use in the middle

SELECT prod_id
FROM Products
WHERE prod_name Like 'F%y';

-- Use underscore (_) wildcard

SELECT prod_id, prod_name
FROM Products
WHERE prod_name LIKE '__ inch teddy bear';

-- Previous command doesn't match 8 inch teddy bear

SELECT prod_id, prod_name
FROM Products
WHERE prod_name LIKE '% inch teddy bear';

-- Test if [] work as wildcards

SELECT cust_contact
FROM Customers
WHERE cust_contact LIKE '[JM]%'
ORDER BY cust_contact;

-- Negate inside []

SELECT cust_contact
FROM Customers
WHERE cust_contact LIKE '[^JM]%'
ORDER BY cust_contact;


