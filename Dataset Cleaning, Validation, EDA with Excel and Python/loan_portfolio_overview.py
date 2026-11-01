import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

df = pd.read_excel("clean_data.xlsx")

# Loan and customer overview
print("Unique loans:", df["loan_id"].nunique())
print("Unique customers:", df["customer_id"].nunique())

# Loan product distribution
print(df.groupby("loan_type")["loan_id"].nunique()
      .sort_values(ascending=False))

# Loan amounts: one record per loan
print("Average loan amount:", df["loan_amount_inr"].mean())
print("Median loan amount:", df["loan_amount_inr"].median())
print("Average monthly income:", df["monthly_income_inr"].mean())
print("Average credit score:", df["credit_score"].mean())

# Loans by city
print(
    df.groupby("city")["loan_id"]
    .nunique()
    .sort_values(ascending=False)
)