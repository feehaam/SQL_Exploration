USE sql_store;

SELECT 
	name AS Name, 
    unit_price AS "Per unit price", 
    (unit_price * 1.1) AS "New Price"
FROM products;