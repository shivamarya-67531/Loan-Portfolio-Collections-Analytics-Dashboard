USE loan_amount_analysis;

-- Q9. Which loans have the highest number of overdue instalments?
SELECT 
    loan_id,
    COUNT(*) AS overdue_installments,
    MAX(days_past_due) AS maximum_days_past_due,
    SUM(amount_due_inr - amount_paid_inr) AS unpaid_amount
FROM
    loan_payments
WHERE
    days_past_due > 0
GROUP BY loan_id
ORDER BY overdue_installments DESC , maximum_days_past_due DESC
LIMIT 10;