-- Retrieve the total number of transactions.

SELECT 
    COUNT(transaction_id) AS total_transactions
FROM
    transactions;