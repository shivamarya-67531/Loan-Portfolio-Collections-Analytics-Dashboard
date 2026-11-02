# 🏦 Loan Portfolio & Collections Analytics Dashboard

## 📌 Project Overview

The **Loan Portfolio & Collections Analytics Dashboard** is a data analytics project designed to analyze loan portfolio characteristics, customer profiles, repayment behavior, overdue instalments, and collections team performance.

The project uses a **synthetic dataset of 1,500 instalment records representing 300 unique loans** to demonstrate how data analytics can help financial institutions monitor repayment trends, identify overdue accounts, and evaluate collections performance.

The goal is to transform raw loan and repayment data into meaningful insights through data cleaning, exploratory data analysis, SQL queries, and interactive Power BI dashboards.

> **Note:** This project uses synthetic data created for educational and portfolio purposes. It does not contain actual customer or financial institution records.

---

## 🎯 Project Objectives

- Analyze the overall loan portfolio and customer distribution.
- Understand loan distribution across products, cities, and employment types.
- Monitor instalment repayment status and overdue payments.
- Analyze Days Past Due (DPD) and delinquency patterns.
- Evaluate recorded collections across teams and payment channels.
- Explore relationships between income, credit scores, loan amounts, and repayment behavior.
- Build interactive dashboards to support data-driven decision-making.

---

## 🛠️ Tools & Technologies

| Tool | Purpose |
|---|---|
| **Microsoft Excel** | Initial data inspection, validation, and data cleaning |
| **SQL / MySQL** | Data querying, aggregation, filtering, and business analysis |
| **Python** | Exploratory data analysis, data quality checks, and visualization |
| **Pandas** | Data manipulation and analysis |
| **NumPy** | Numerical operations |
| **Matplotlib & Seaborn** | Exploratory data visualizations |
| **Power BI** | Interactive dashboards, KPIs, and business reporting |
| **GitHub** | Project documentation and version control |

*The tools listed describe the intended project workflow; update this section to reflect the tools you have actually used.*

---

## 📂 Dataset Description

The dataset contains **1,500 instalment-level records across 300 unique loans**, with five instalment records per loan.

### Key Dataset Information

| Attribute | Description |
|---|---|
| Number of records | 1,500 |
| Unique loans | 300 |
| Record level | Individual loan instalment |
| Data type | Synthetic financial dataset |
| Reporting date | November 1, 2026 |
| Primary analysis areas | Loan portfolio, repayments, delinquency, collections |

### Important Columns

| Column | Description |
|---|---|
| `loan_id` | Unique identifier for a loan |
| `customer_id` | Customer identifier |
| `loan_type` | Type of loan |
| `city` | Customer's city |
| `employment_type` | Customer's employment category |
| `monthly_income_inr` | Monthly income in INR |
| `credit_score` | Customer credit score |
| `loan_amount_inr` | Original loan amount in INR |
| `annual_interest_rate_pct` | Annual interest rate |
| `tenure_months` | Loan tenure in months |
| `disbursement_date` | Date the loan was disbursed |
| `installment_number` | Instalment sequence number |
| `due_date` | Scheduled instalment due date |
| `payment_date` | Recorded payment date |
| `amount_due_inr` | Amount due for the instalment |
| `amount_paid_inr` | Amount recorded as paid |
| `payment_status` | Instalment repayment status |
| `partial_payment` | Check for Instalment is Partial or not |
| `days_past_due` | Number of days past due |
| `outstanding_principal_est_inr` | Estimated outstanding principal |
| `payment_channel` | Payment channel |
| `collections_team` | Assigned collections team |
| `dpd_bucket` | Delinquency category based on DPD |
| `loan_account_status` | Loan account status |

### Payment Status Categories

The dataset includes the following repayment status categories:

- **On Time** — Payment recorded as on time.
- **Late** — Payment recorded after its due date.
- **Partial** — Payment amount is less than the amount due.
- **Overdue** — Instalment is overdue.
- **Upcoming** — Instalment is not yet due as of the reporting date.

---

## 📊 Power BI Dashboard

The planned Power BI report is organized into three main pages.

### 1. Loan Portfolio Overview

This page provides an overview of the loan portfolio.

**Key KPIs**
- Total Unique Loans
- Total Unique Customers
- Average Loan Amount
- Total Loan Amount
- Estimated Outstanding Principal

**Visualizations**
- Loan distribution by product type
- Loan distribution by city
- Customer distribution by employment type
- Average loan amount by product
- Loan amount distribution
- Credit score distribution
- Monthly loan disbursement trends

**Business Questions**
- Which loan products account for the most loans?
- Which cities have the highest number of loans?
- How does loan distribution vary by employment type?
- How are loan amounts distributed across the portfolio?

### 2. Repayment & Delinquency Analysis

This page focuses on instalment repayment behavior and overdue payments.

**Key KPIs**
- Instalments Due
- On-Time Payment Rate
- Overdue Instalments
- Overdue Rate
- Recorded Collection Rate

**Visualizations**
- Instalments by payment status
- Instalments by DPD bucket
- Amount due versus amount recorded as paid
- Overdue rate by loan product
- Overdue rate by city
- Overdue rate by employment type
- Monthly repayment trends

**Business Questions**
- What proportion of due instalments are overdue?
- Which loan products have higher overdue rates?
- How does delinquency vary across cities?
- What is the difference between scheduled dues and recorded collections?
- How does repayment behavior vary by employment type?

### 3. Collections Team Performance

This page evaluates recorded collections and overdue workload.

**Key KPIs**
- Total Recorded Collections
- Overdue Instalments
- Average Days Past Due
- Loans with Overdue Instalments
- Collection Rate

**Visualizations**
- Recorded collections by collections team
- Overdue instalments by team
- Collection rate by team
- Average DPD by team
- Recorded collections by payment channel
- Detailed table of overdue instalments

**Business Questions**
- Which collections teams have the highest recorded collections?
- Which teams manage the largest overdue workload?
- How does average DPD vary across teams?
- Which payment channels are associated with the highest recorded payment amounts?
- Which overdue accounts may require follow-up?

*These pages describe the planned dashboard structure. Replace or revise this section to match the visuals and KPIs actually implemented in your Power BI report.*

---

## 🧮 SQL Analysis

SQL can be used to answer business questions and generate metrics from the instalment-level dataset.

Examples include:

1. Count the total number of instalment records and unique loans.
2. Analyze the distribution of loans by product type.
3. Calculate average loan amount by product.
4. Count instalments by payment status.
5. Identify overdue instalments and their DPD buckets.
6. Calculate overdue rates by city and loan product.
7. Compare recorded collections across collections teams.
8. Analyze payment channel usage.
9. Identify records with missing payment dates.
10. Compare the amount due with the amount recorded as paid.
11. Analyze repayment trends by month.
12. Compare repayment patterns across employment types.

### Example SQL Query

**Question:** How many instalment records belong to each payment status?

```sql
SELECT
    payment_status,
    COUNT(*) AS total_installments
FROM loan_payments
GROUP BY payment_status
ORDER BY total_installments DESC;
```

**Question:** How many unique loans have at least one instalment with positive days past due?

```sql
SELECT
    COUNT(DISTINCT loan_id) AS loans_with_overdue_installments
FROM loan_payments
WHERE days_past_due > 0;
```

These queries demonstrate grouping, aggregation, filtering, and distinct counting for financial data analysis.

---

## 🐍 Python Exploratory Data Analysis

Python can be used to perform exploratory data analysis (EDA) and validate the dataset before building visualizations.

### Analysis Areas

- Dataset structure and data types
- Missing values and duplicate records
- Unique loan and customer counts
- Distribution of loan products
- Payment status distribution
- DPD and delinquency analysis
- Loan amount and income distributions
- Credit score analysis
- Collections team performance
- Payment channel analysis
- Date-based trends
- Comparison of amounts due and recorded payments

### Example Python Code

```python
import pandas as pd
import matplotlib.pyplot as plt

# Load the dataset
df = pd.read_csv("Loan_Portfolio_Collections_Synthetic_1500_Rows.csv")

# Inspect the dataset
print("Dataset shape:", df.shape)
print(df.head())
print(df.info())

# Check missing values
print("\nMissing values:")
print(df.isnull().sum())

# Count unique loans and customers
print("\nUnique loans:", df["loan_id"].nunique())
print("Unique customers:", df["customer_id"].nunique())

# Analyze payment status
payment_counts = df["payment_status"].value_counts()
print("\nPayment status distribution:")
print(payment_counts)

# Visualize payment status
payment_counts.plot(kind="bar")
plt.title("Instalments by Payment Status")
plt.xlabel("Payment Status")
plt.ylabel("Number of Instalment Records")
plt.xticks(rotation=45)
plt.tight_layout()
plt.show()
```

---

## 📈 Key Business Metrics

The following metrics can be calculated for the dashboard.

| Metric | Description |
|---|---|
| Total Unique Loans | Count of distinct loan IDs |
| Total Unique Customers | Count of distinct customer IDs |
| Average Loan Amount | Average original loan amount at the loan level |
| Total Recorded Collections | Sum of recorded instalment payments |
| On-Time Payment Rate | On-time instalments divided by eligible due instalments |
| Overdue Rate | Overdue instalments divided by eligible due instalments |
| Average DPD | Average days past due for the selected population |
| Loans with Overdue Instalments | Distinct loans with one or more overdue instalments |
| Collection Rate | Recorded collections divided by the corresponding amount due, using a clearly defined reporting population |
| Estimated Outstanding Principal | Estimated principal balance, aggregated once per loan |

**Metric definitions matter.** Upcoming instalments should not be included in the overdue-rate denominator. Collection-rate calculations should use a consistent reporting period and a clearly defined due amount. On-time payment status should not be inferred from DPD alone.

---

## 🎓 Skills Demonstrated

- Data Cleaning and Validation
- Exploratory Data Analysis (EDA)
- SQL Queries and Aggregations
- Python and Pandas
- Microsoft Excel
- Power BI Dashboard Development
- KPI Design and Business Metrics
- Financial and Repayment Data Analysis
- Data Visualization
- Business Problem Solving
- Analytical Thinking
- GitHub Documentation

---

## 👨‍💻 About the Project

This project was developed as part of my learning journey in **Data Analytics and Business Analytics**, with a focus on using data to understand repayment behavior, monitor portfolio performance, and communicate insights through dashboards.

It demonstrates a practical analytics workflow, from understanding raw data to preparing business metrics and designing interactive visual reports.

---
