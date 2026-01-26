-- Identify the highest transaction value.

SELECT 
    transaction_id,
    product_name,
    ROUND((quantity * price - discount_applied), 2) AS transaction_value
FROM 
    transactions
ORDER BY 
    transaction_value DESC
LIMIT 1;