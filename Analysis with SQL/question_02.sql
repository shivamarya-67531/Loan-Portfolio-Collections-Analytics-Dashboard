USE loan_amount_analysis;

-- Q2. How many instalments fall under each payment status?
SELECT 
    payment_status, COUNT(*) AS installment_count
FROM
    loan_payments
GROUP BY payment_status
ORDER BY installment_count DESC;