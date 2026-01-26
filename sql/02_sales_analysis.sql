-- Calculate the total revenue generated from all transactions.

SELECT 
    ROUND(SUM(quantity * price - discount_applied),
            2) AS total_sales
FROM
    transactions;