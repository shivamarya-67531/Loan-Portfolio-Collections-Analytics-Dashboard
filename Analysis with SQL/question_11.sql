USE loan_amount_analysis;

-- Q11. Which collections team has the highest collection rate on instalments due by the reporting date?
SELECT 
    collection_team,
    COUNT(*) AS due_installments,
    SUM(amount_due_inr) AS scheduled_amount,
    SUM(amount_paid_inr) AS recorded_amount_paid,
    ROUND(100.0 * SUM(amount_paid_inr) / NULLIF(SUM(amount_due_inr), 0),
            2) AS collection_rate_pct
FROM
    loan_payments
WHERE
    due_date <= '2026-11-01'
GROUP BY collection_team
ORDER BY collection_rate_pct DESC;