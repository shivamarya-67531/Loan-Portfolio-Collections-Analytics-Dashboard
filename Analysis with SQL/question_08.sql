USE loan_amount_analysis;

-- Q8. How many loans fall into each DPD bucket?
SELECT 
    dpd_bucket,
    COUNT(*) AS installment_records,
    COUNT(DISTINCT loan_id) AS unique_loans
FROM
    loan_payments
GROUP BY dpd_bucket
ORDER BY installment_records DESC