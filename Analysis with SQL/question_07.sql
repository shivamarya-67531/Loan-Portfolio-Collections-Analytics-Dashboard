USE loan_amount_analysis;

-- Q7. Which loan type have the highest overdue-payment rate?
SELECT 
    loan_type,
    COUNT(*) AS total_installments,
    SUM(CASE
        WHEN days_past_due > 0 THEN 1
        ELSE 0
    END) AS overdue_installments,
    ROUND(100.0 * SUM(CASE
                WHEN days_past_due > 0 THEN 1
                ELSE 0
            END) / NULLIF(COUNT(*), 0),
            2) AS overdue_rate_pct
FROM
    loan_payments
GROUP BY loan_type
ORDER BY overdue_rate_pct DESC;