--
-- Sam's Teach Yourself SQL in 10 Minutes
-- Chapter 8: Using Data Manipulation Functions
--

-- Use UPPER() function

SELECT vend_name, UPPER(vend_name) AS vend_name_upcase
FROM Vendors
ORDER BY vend_name;

-- Using SOUNDEX (not supported unless specified when building SQLite)

SELECT cust_name, cust_contact
FROM Customers
WHERE SOUNDEX(cust_contact) = SOUNDEX('Michael Green');

-- Dates

SELECT order_num 
FROM Orders
WHERE strftime('%Y', order_date) = 2012;




