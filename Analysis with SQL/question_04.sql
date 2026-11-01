USE loan_amount_analysis;

-- Q4. What is the total scheduled amount and total recorded payment amount?
SELECT 
    SUM(amount_due_inr) AS total_amount_due,
    SUM(amount_paid_inr) AS total_amount_paid,
    SUM(amount_due_inr) - SUM(amount_paid_inr) AS difference
FROM
    loan_payments;