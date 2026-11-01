USE loan_amount_analysis;

-- Q3. Which loan type have the highest number of unique loans?
SELECT 
    loan_type, COUNT(DISTINCT loan_id) AS total_loans
FROM
    loan_payments
GROUP BY loan_type
ORDER BY total_loans DESC;