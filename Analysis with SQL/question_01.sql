USE loan_amount_analysis;
SELECT * FROM loan_payments;

-- Q1. How many unique loans, and unique customers are present?
SELECT 
    COUNT(DISTINCT loan_id) AS unique_loans,
    COUNT(DISTINCT customer_id) AS unique_customers
FROM
    loan_payments;