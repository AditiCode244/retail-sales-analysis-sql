-- Find the total number of unique customers.

SELECT 
    (SELECT 
            COUNT(DISTINCT customer_id)
        FROM
            customers) AS total_registered_customers,
    (SELECT 
            COUNT(DISTINCT customer_id)
        FROM
            transactions) AS customers_with_purchases,
    (SELECT 
            COUNT(DISTINCT customer_id)
        FROM
            customers
        WHERE
            customer_id NOT IN (SELECT DISTINCT
                    customer_id
                FROM
                    transactions)) AS registered_but_no_purchases,
    ROUND((SELECT 
                    COUNT(DISTINCT customer_id)
                FROM
                    transactions) * 100.0 / (SELECT 
                    COUNT(DISTINCT customer_id)
                FROM
                    customers),
            2) AS purchase_conversion_rate;
