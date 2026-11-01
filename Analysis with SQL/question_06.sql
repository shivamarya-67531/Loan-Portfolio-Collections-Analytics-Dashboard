USE loan_amount_analysis;

-- Q6. How many instalments are overdue, and what percentage of all instalments are overdue?
SELECT 
    COUNT(*) AS total_installments,
    SUM(CASE
        WHEN days_past_due > 0 THEN 1
        ELSE 0
    END) AS overdue_installments,
    ROUND(100.0 * SUM(CASE
                WHEN days_past_due > 0 THEN 1
                ELSE 0
            END) / NULLIF(COUNT(*), 0),
            2) AS overdue_percentage
FROM
    loan_payments;