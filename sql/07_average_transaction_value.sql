-- Find the average transaction amount

SELECT 
    AVG(transaction_value) AS average_transaction_amount
FROM
    (SELECT 
        transaction_id, SUM(quantity * price) AS transaction_value
    FROM
        transactions
    GROUP BY transaction_id) AS transaction_value;
