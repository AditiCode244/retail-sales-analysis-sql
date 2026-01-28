-- List the top 5 products by total quantity sold.

SELECT 
    product_name, SUM(quantity) AS total_quantity_sold
FROM
    transactions
GROUP BY product_name
ORDER BY total_quantity_sold DESC
LIMIT 5;
