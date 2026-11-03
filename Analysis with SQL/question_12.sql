USE loan_amount_analysis;

-- Q12. What percentage of payment records have no payment date?
SELECT 
    COUNT(*) AS total_records,
    SUM(CASE
        WHEN payment_date IS NULL THEN 1
        ELSE 0
    END) AS records_without_payment_date,
    ROUND(100.0 * SUM(CASE
                WHEN payment_date IS NULL THEN 1
                ELSE 0
            END) / NULLIF(COUNT(*), 0),
            2) AS missing_payment_date_pct
FROM
    loan_payments;