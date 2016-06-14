--
-- Sam's Teach Yourself SQL in 10 Minutes
-- Chapter 5 Examples
--

-- Learn to use the OR operator

SELECT prod_id, prod_price, prod_name 
FROM Products
WHERE vend_id = 'DLL01' AND prod_price <= 4;

-- Learn to use the OR operator

SELECT prod_name, prod_price 
FROM Products
WHERE vend_id = 'DLL01' OR vend_id = 'BRS01';

-- Learn operations with both AND and OR

SELECT prod_name, prod_price
FROM Products
WHERE vend_id = 'DLL01' OR vend_id = 'BRS01' AND prod_price >= 10;

-- This created the wrong query

SELECT prod_name, prod_price
FROM Products
WHERE (vend_id = 'DLL01' OR vend_id = 'BRS01') AND prod_price >= 10;

-- Using IN command

SELECT prod_name, prod_price
FROM Products
WHERE vend_id IN ('DLL01','BRS01')
ORDER BY prod_name;

-- Use the NOT keyword

SELECT prod_name
FROM Products
WHERE NOT vend_id = 'DLL01'
ORDER BY prod_name;

-- Alternate example for previous command

SELECT prod_name
FROM Products
WHERE vend_id <> 'DLL01'
ORDER BY prod_name;



