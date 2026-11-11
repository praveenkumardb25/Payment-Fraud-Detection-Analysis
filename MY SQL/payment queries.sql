use payment ;

show tables;

SELECT COUNT(*) 
FROM payment_data;

SELECT *
FROM payment_data
LIMIT 10;

SELECT DISTINCT type
FROM payment_data;

SELECT type, COUNT(*) AS total_transactions
FROM payment_data
GROUP BY type;

SELECT COUNT(*) AS fraud_transactions
FROM payment_data
WHERE isFraud = 1;

SELECT COUNT(*) AS non_fraud_transactions
FROM payment_data
WHERE isFraud = 0;	

SELECT SUM(amount) AS total_fraud_amount
FROM payment_data
WHERE isFraud = 1;

SELECT type, COUNT(*) AS fraud_count
FROM payment_data
WHERE isFraud = 1
GROUP BY type;

SELECT MAX(amount) AS highest_transaction
FROM payment_data;
    
    SELECT
    fraud_status,
    COUNT(*) AS total_transactions
FROM payment_data
GROUP BY fraud_status;

SELECT
    flag_status,
    COUNT(*) AS total_count
FROM payment_data
GROUP BY flag_status;

SELECT
    type,
    COUNT(*) AS fraud_count
FROM payment_data
WHERE isFraud = 1
GROUP BY type;

SELECT
    AVG(amount) AS average_amount
FROM payment_data;

SELECT
    amount_bucket,
    COUNT(*) AS total_transactions
FROM payment_data
GROUP BY amount_bucket;

SELECT
    isFraud,
    isFlaggedFraud,
    COUNT(*) AS total_count
FROM payment_data
GROUP BY isFraud, isFlaggedFraud;

SELECT
    AVG(orgin_balance_change) AS avg_sender_balance_change
FROM payment_data;

SELECT
    AVG(destination_balance_change) AS avg_destination_balance_change
FROM payment_data;

