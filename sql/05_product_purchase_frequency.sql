-- Identify the most commonly purchased product. 

SELECT 
    product_name AS most_common_product,
    COUNT(*) AS purchase_frequency,
    SUM(quantity) AS total_units_sold,
    ROUND(COUNT(*) * 100.0 / (SELECT 
                    COUNT(*)
                FROM
                    transactions),
            2) AS percentage_of_all_transactions
FROM
    transactions
GROUP BY product_name
ORDER BY COUNT(*) DESC
LIMIT 1;
