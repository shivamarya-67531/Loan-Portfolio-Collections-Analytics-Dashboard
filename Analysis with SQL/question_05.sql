USE loan_amount_analysis;

-- Q5. What is the average loan amount by product type?
WITH unique_loans AS (
    SELECT
        loan_id,
        loan_type,
        loan_amount_inr
    FROM loan_payments
    GROUP BY
        loan_id,
        loan_type,
        loan_amount_inr
)
SELECT
    loan_type,
    COUNT(*) AS total_loans,
    ROUND(AVG(loan_amount_inr), 2) AS average_loan_amount
FROM unique_loans
GROUP BY loan_type
ORDER BY average_loan_amount DESC;