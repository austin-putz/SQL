--
-- Sam's Teach Yourself SQL in 10 Minutes
-- Chapter 7 Examples
--

-- Print all of Vendors to View

SELECT * FROM Vendors;

-- Practice concatenating data

SELECT vend_name || ' (' || vend_country || ')'
FROM Vendors
ORDER BY vend_name;

-- Remove padding spaces

SELECT RTRIM(vend_name) || ' (' || RTRIM(vend_country) || ')'
FROM Vendors
ORDER BY vend_name;

-- Use alias for column name of new column

SELECT RTRIM(vend_name) || ' (' || RTRIM(vend_country) || ')'
	AS vend_title  -- added to name newly created column
FROM Vendors
ORDER BY vend_name;

-- Mathematical calculations

SELECT prod_id, quantity, item_price
FROM OrderItems
WHERE order_num = 20008;

-- Mathematical calculations

SELECT prod_id, quantity, item_price,
			quantity*item_price AS expanded_price
FROM OrderItems
WHERE order_num = 20008;







