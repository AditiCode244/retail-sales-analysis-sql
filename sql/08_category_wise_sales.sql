-- Determine the total sales for each product category

SELECT 
    product_category, SUM(quantity * price) AS total_sales
FROM
    transactions
GROUP BY product_category
ORDER BY total_sales DESC;
